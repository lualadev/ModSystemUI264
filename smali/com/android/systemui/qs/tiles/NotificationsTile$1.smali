.class Lcom/android/systemui/qs/tiles/NotificationsTile$1;
.super Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.source "NotificationsTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/NotificationsTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/NotificationsTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/NotificationsTile;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NotificationsTile$1;->this$0:Lcom/android/systemui/qs/tiles/NotificationsTile;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onZenChanged(I)V
    .locals 3
    .param p1, "zen"    # I

    .prologue
    .line 118
    # getter for: Lcom/android/systemui/qs/tiles/NotificationsTile;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/qs/tiles/NotificationsTile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NotificationsTile$1;->this$0:Lcom/android/systemui/qs/tiles/NotificationsTile;

    # getter for: Lcom/android/systemui/qs/tiles/NotificationsTile;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/NotificationsTile;->access$100(Lcom/android/systemui/qs/tiles/NotificationsTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onZenChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NotificationsTile$1;->this$0:Lcom/android/systemui/qs/tiles/NotificationsTile;

    # invokes: Lcom/android/systemui/qs/tiles/NotificationsTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/NotificationsTile;->access$200(Lcom/android/systemui/qs/tiles/NotificationsTile;)V

    .line 120
    return-void
.end method
