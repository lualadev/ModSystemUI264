.class Lcom/android/systemui/volume/VolumePanel$11;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0

    .prologue
    .line 1406
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$11;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$11;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$2100(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/ZenModePanel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1410
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$11;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$2100(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/ZenModePanel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setExpanded(Z)V

    .line 1412
    :cond_0
    return-void
.end method
