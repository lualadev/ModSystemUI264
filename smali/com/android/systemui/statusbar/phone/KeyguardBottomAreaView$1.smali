.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "KeyguardBottomAreaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 132
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "label":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    :cond_0
    :goto_0
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 142
    return-void

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$200(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 146
    const/16 v1, 0x10

    if-ne p2, v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZ)V

    .line 159
    :goto_0
    return v0

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera()V

    goto :goto_0

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$200(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 155
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchPhone()V

    goto :goto_0

    .line 159
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method
