.class Lcom/android/systemui/statusbar/phone/TaskManager$3;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/TaskManager;->inflateTaskItemView(Lcom/android/systemui/statusbar/phone/TaskManager$DetailProcess;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TaskManager;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/TaskManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TaskManager$3;->this$0:Lcom/android/systemui/statusbar/phone/TaskManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/TaskManager$3;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 211
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 212
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 213
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 214
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "packagename"

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TaskManager$3;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 216
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TaskManager$3;->this$0:Lcom/android/systemui/statusbar/phone/TaskManager;

    # getter for: Lcom/android/systemui/statusbar/phone/TaskManager;->mHandler:Lcom/android/systemui/statusbar/phone/TaskManager$TaskManagerHandler;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/TaskManager;->access$100(Lcom/android/systemui/statusbar/phone/TaskManager;)Lcom/android/systemui/statusbar/phone/TaskManager$TaskManagerHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/TaskManager$TaskManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 217
    return-void
.end method
