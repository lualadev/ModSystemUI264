.class Lcom/android/systemui/statusbar/SignalClusterView$1;
.super Landroid/database/ContentObserver;
.source "SignalClusterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/SignalClusterView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    # invokes: Lcom/android/systemui/statusbar/SignalClusterView;->updateSignalClusterExclusionSettings()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView;->access$000(Lcom/android/systemui/statusbar/SignalClusterView;)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    # invokes: Lcom/android/systemui/statusbar/SignalClusterView;->apply()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView;->access$100(Lcom/android/systemui/statusbar/SignalClusterView;)V

    .line 152
    return-void
.end method
