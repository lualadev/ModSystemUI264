.class Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StackStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAlphaAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public mWasCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

.field final synthetic val$child:Lcom/android/systemui/statusbar/ExpandableView;

.field final synthetic val$newEndValue:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;F)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    iput p3, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->val$newEndValue:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 507
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->mWasCancelled:Z

    .line 508
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 495
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 496
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->val$newEndValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->mWasCancelled:Z

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setVisibility(I)V

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const v1, 0x7f100003

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 501
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const v1, 0x7f10000f

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 502
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const v1, 0x7f100009

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 503
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 512
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->mWasCancelled:Z

    .line 513
    return-void
.end method
