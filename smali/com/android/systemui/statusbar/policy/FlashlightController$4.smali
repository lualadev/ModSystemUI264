.class Lcom/android/systemui/statusbar/policy/FlashlightController$4;
.super Ljava/lang/Object;
.source "FlashlightController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/FlashlightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$4;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$4;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui/statusbar/policy/FlashlightController;->updateFlashlight(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$1100(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)V

    .line 351
    return-void
.end method
