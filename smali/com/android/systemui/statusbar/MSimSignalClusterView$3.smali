.class Lcom/android/systemui/statusbar/MSimSignalClusterView$3;
.super Ljava/lang/Object;
.source "MSimSignalClusterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/MSimSignalClusterView;->onStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MSimSignalClusterView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/MSimSignalClusterView;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView$3;->this$0:Lcom/android/systemui/statusbar/MSimSignalClusterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 370
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView$3;->this$0:Lcom/android/systemui/statusbar/MSimSignalClusterView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView$3;->this$0:Lcom/android/systemui/statusbar/MSimSignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v2

    # setter for: Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpnVisible:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->access$602(Lcom/android/systemui/statusbar/MSimSignalClusterView;Z)Z

    .line 371
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView$3;->this$0:Lcom/android/systemui/statusbar/MSimSignalClusterView;

    # getter for: Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->access$700(Lcom/android/systemui/statusbar/MSimSignalClusterView;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView$3;->this$0:Lcom/android/systemui/statusbar/MSimSignalClusterView;

    # invokes: Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->access$200(Lcom/android/systemui/statusbar/MSimSignalClusterView;I)V

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    :cond_0
    return-void
.end method
