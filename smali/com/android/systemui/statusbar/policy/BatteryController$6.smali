.class Lcom/android/systemui/statusbar/policy/BatteryController$6;
.super Landroid/database/ContentObserver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController$6;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController$6;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController$6;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    # invokes: Lcom/android/systemui/statusbar/policy/BatteryController;->isStaminaIconExcluded()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$900(Lcom/android/systemui/statusbar/policy/BatteryController;)Z

    move-result v1

    # setter for: Lcom/android/systemui/statusbar/policy/BatteryController;->mStaminaIconExcluded:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$802(Lcom/android/systemui/statusbar/policy/BatteryController;Z)Z

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController$6;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    # invokes: Lcom/android/systemui/statusbar/policy/BatteryController;->updateView()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$200(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 179
    return-void
.end method
