class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "با تمرین بدن خود را بسازید",
    image: "assets/vectors/Onboarding/power.png",
    desc: "همواره پیشرفت و دستاوردهای ورزشی خود را به خاطر بسپارید.",
  ),
  OnboardingContents(
    title: "رژیم مخصوص خودت رو استفاده کن",
    image: "assets/vectors/Onboarding/regime.png",
    desc: "کنترل اطلاعیه‌های رژیمی و سلامتی خود را به دست بگیرید و با توصیه‌های حرفه‌ای در مسیر بمانید.",
  ),
  OnboardingContents(
    title: "سلامتی مهم ترین عنصر انسان",
    image: "assets/vectors/Onboarding/health.png",
    desc: "با تمرین‌های منظم سلامت و سیستم ایمنی بدن خود را تقویت کنید.",
  ),
];
