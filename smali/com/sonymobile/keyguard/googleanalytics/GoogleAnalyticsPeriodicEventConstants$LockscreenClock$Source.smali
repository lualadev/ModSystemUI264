.class public final enum Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;
.super Ljava/lang/Enum;
.source "GoogleAnalyticsPeriodicEventConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

.field public static final enum DEFAULT:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

.field public static final enum Fallback:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

.field public static final enum LockscreenClockPicker:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

.field public static final enum LockscreenSettings:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

.field public static final enum SoftReset:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

.field public static final enum Theme:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 270
    new-instance v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    const-string v1, "LockscreenClockPicker"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;->LockscreenClockPicker:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    .line 275
    new-instance v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    const-string v1, "LockscreenSettings"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;->LockscreenSettings:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    .line 280
    new-instance v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    const-string v1, "SoftReset"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;->SoftReset:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    .line 285
    new-instance v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    const-string v1, "Theme"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;->Theme:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    .line 292
    new-instance v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    const-string v1, "Fallback"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;->Fallback:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    .line 297
    new-instance v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    const-string v1, "DEFAULT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;->DEFAULT:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    .line 266
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    sget-object v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;->LockscreenClockPicker:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;->LockscreenSettings:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;->SoftReset:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;->Theme:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;->Fallback:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;->DEFAULT:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;->$VALUES:[Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 266
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 266
    const-class v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;->$VALUES:[Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    invoke-virtual {v0}, [Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    return-object v0
.end method
