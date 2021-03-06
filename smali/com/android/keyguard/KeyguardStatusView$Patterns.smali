.class final Lcom/android/keyguard/KeyguardStatusView$Patterns;
.super Ljava/lang/Object;
.source "KeyguardStatusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Patterns"
.end annotation


# static fields
.field static cacheKey:Ljava/lang/String;

.field static clockView12:Ljava/lang/String;

.field static clockView24:Ljava/lang/String;

.field static dateView:Ljava/lang/String;


# direct methods
.method static update(Landroid/content/Context;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hasAlarm"    # Z

    .prologue
    .line 364
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 365
    .local v5, "locale":Ljava/util/Locale;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 368
    .local v6, "res":Landroid/content/res/Resources;
    sget v7, Lcom/android/keyguard/R$string;->abbrev_wday_month_day_no_year:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, "dateViewSkel":Ljava/lang/String;
    sget v7, Lcom/android/keyguard/R$string;->clock_12hr_format:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "clockView12Skel":Ljava/lang/String;
    sget v7, Lcom/android/keyguard/R$string;->clock_24hr_format:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "clockView24Skel":Ljava/lang/String;
    const v7, 0x11200d4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 373
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "date_format"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 375
    .local v3, "dateformat":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 376
    sget-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v3, Lcom/android/keyguard/KeyguardStatusView$Patterns;->dateView:Ljava/lang/String;

    .end local v3    # "dateformat":Ljava/lang/String;
    :cond_0
    sput-object v3, Lcom/android/keyguard/KeyguardStatusView$Patterns;->dateView:Ljava/lang/String;

    .line 390
    :goto_0
    invoke-static {v5, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView12:Ljava/lang/String;

    .line 393
    const-string v7, "a"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 394
    sget-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView12:Ljava/lang/String;

    const-string v8, "a"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView12:Ljava/lang/String;

    .line 397
    :cond_1
    invoke-static {v5, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView24:Ljava/lang/String;

    .line 399
    :cond_2
    return-void

    .line 378
    .restart local v3    # "dateformat":Ljava/lang/String;
    :cond_3
    invoke-static {v5, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->dateView:Ljava/lang/String;

    goto :goto_0

    .line 381
    .end local v3    # "dateformat":Ljava/lang/String;
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 383
    .local v4, "key":Ljava/lang/String;
    sget-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->cacheKey:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 386
    invoke-static {v5, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->dateView:Ljava/lang/String;

    .line 387
    sput-object v4, Lcom/android/keyguard/KeyguardStatusView$Patterns;->cacheKey:Ljava/lang/String;

    goto :goto_0
.end method
