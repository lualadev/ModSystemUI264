.class Lcom/android/systemui/power/PowerNotificationWarnings$7$1;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerNotificationWarnings$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/power/PowerNotificationWarnings$7;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings$7;)V
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$7$1;->this$1:Lcom/android/systemui/power/PowerNotificationWarnings$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$7$1;->this$1:Lcom/android/systemui/power/PowerNotificationWarnings$7;

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings$7;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    const/4 v1, 0x1

    # invokes: Lcom/android/systemui/power/PowerNotificationWarnings;->setSaverMode(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1600(Lcom/android/systemui/power/PowerNotificationWarnings;Z)V

    .line 648
    return-void
.end method
