.class Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "LTEControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x7

    .line 68
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;

    # invokes: Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->getPreferredNetworkMode()I
    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->access$000(Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;)I

    move-result v0

    .line 69
    .local v0, "newType":I
    if-le v0, v2, :cond_1

    .line 70
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;

    # getter for: Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mCurrentState:I
    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->access$100(Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;)I

    move-result v1

    if-gt v1, v2, :cond_0

    .line 71
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;

    # getter for: Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mCurrentState:I
    invoke-static {v2}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->access$100(Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;)I

    move-result v2

    # setter for: Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mNonLte:I
    invoke-static {v1, v2}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->access$202(Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;I)I

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;

    const/4 v2, 0x1

    # setter for: Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mEnabled:Z
    invoke-static {v1, v2}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->access$302(Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;Z)Z

    .line 80
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;

    # setter for: Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mCurrentState:I
    invoke-static {v1, v0}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->access$102(Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;I)I

    .line 81
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;

    # invokes: Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->lteSettingsChanged()V
    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->access$500(Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;)V

    .line 82
    return-void

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;

    # getter for: Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mCurrentState:I
    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->access$100(Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;)I

    move-result v1

    if-le v1, v2, :cond_2

    .line 76
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;

    # getter for: Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mCurrentState:I
    invoke-static {v2}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->access$100(Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;)I

    move-result v2

    # setter for: Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mLte:I
    invoke-static {v1, v2}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->access$402(Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;I)I

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;

    const/4 v2, 0x0

    # setter for: Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mEnabled:Z
    invoke-static {v1, v2}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->access$302(Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;Z)Z

    goto :goto_0
.end method
