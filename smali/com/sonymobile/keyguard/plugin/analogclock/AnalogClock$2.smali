.class Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$2;
.super Landroid/content/BroadcastReceiver;
.source "AnalogClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$2;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 97
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const-string v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "timeZone":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$2;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    # invokes: Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setTimeZone(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->access$300(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;Ljava/lang/String;)V

    .line 101
    .end local v0    # "timeZone":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$2;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    # invokes: Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->updateTime()V
    invoke-static {v1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->access$200(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)V

    .line 102
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$2;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    # invokes: Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->updateDateTexts()V
    invoke-static {v1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->access$400(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)V

    .line 103
    return-void
.end method
