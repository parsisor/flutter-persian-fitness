from fastapi import FastAPI 
from pydantic import BaseModel
from fastapi.middleware.cors import CORSMiddleware
import sys
import os

# اضافه کردن مسیر به sys.path برای ایمپورت کردن فایل AI.py
sys.path.append(os.path.join(os.path.dirname(__file__), 'lib', 'fitness_hub', 'otherPages', 'Tools'))

# ایمپورت کردن تابع یا کلاس مورد نیاز از فایل AI.py
from AI import get_ai_response  # فرض کنید تابعی به نام get_ai_response در فایل AI.py دارید

class Message(BaseModel):
    message: str

app = FastAPI()

origins = [
    "http://localhost",  # آدرس محلی شما
    "http://localhost:8000",
    "http://localhost:8080",
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

@app.post("/chat/")
async def chat(message: Message):
    user_message = message.message
    ai_response = get_ai_response(user_message)  # استفاده از تابع ایمپورت شده برای گرفتن پاسخ
    return {"response": ai_response}
