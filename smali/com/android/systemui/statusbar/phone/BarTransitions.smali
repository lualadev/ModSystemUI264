.class public Lcom/android/systemui/statusbar/phone/BarTransitions;
.super Ljava/lang/Object;
.source "BarTransitions.java"


# static fields
.field public static final HIGH_END:Z


# instance fields
.field private final mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

.field private mMode:I

.field private final mTag:Ljava/lang/String;

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/BarTransitions;->HIGH_END:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIIIIIII)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "gradientResourceId"    # I
    .param p3, "nonSkinnableGradientResourceId"    # I
    .param p4, "semiTransparentResourceId"    # I
    .param p5, "fullyTransparentResourceId"    # I
    .param p6, "opaqueResourceId"    # I
    .param p7, "opaqueLightResourceId"    # I
    .param p8, "opaqueLightsOutResourceId"    # I
    .param p9, "warningResourceId"    # I

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BarTransitions."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mTag:Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mView:Landroid/view/View;

    .line 110
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 112
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v4, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    const/16 v5, 0x8

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v3, p5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-virtual {v3, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-virtual {v3, p7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    .line 123
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->getNumberOfLayers()I

    move-result v2

    .line 124
    .local v2, "nLayers":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 125
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    invoke-virtual {v4, v1, v1}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->setId(II)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->resetTransition()V

    .line 130
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/BarTransitions;->HIGH_END:Z

    if-eqz v4, :cond_1

    .line 131
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 133
    :cond_1
    return-void
.end method

.method protected static isOpaque(I)Z
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 240
    if-eqz p0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static modeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .prologue
    .line 247
    if-nez p0, :cond_0

    const-string v0, "MODE_OPAQUE"

    .line 261
    :goto_0
    return-object v0

    .line 248
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string v0, "MODE_SEMI_TRANSPARENT"

    goto :goto_0

    .line 249
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string v0, "MODE_TRANSLUCENT"

    goto :goto_0

    .line 250
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string v0, "MODE_LIGHTS_OUT"

    goto :goto_0

    .line 251
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string v0, "MODE_TRANSPARENT"

    goto :goto_0

    .line 252
    :cond_4
    const/16 v0, 0x8

    if-ne p0, v0, :cond_5

    const-string v0, "MODE_FULLY_TRANSPARENT"

    goto :goto_0

    .line 253
    :cond_5
    const/4 v0, 0x5

    if-ne p0, v0, :cond_6

    const-string v0, "MODE_WARNING"

    goto :goto_0

    .line 254
    :cond_6
    const/4 v0, 0x6

    if-ne p0, v0, :cond_7

    const-string v0, "MODE_LIGHTS_OUT_TRANSPARENT"

    goto :goto_0

    .line 255
    :cond_7
    const/4 v0, 0x7

    if-ne p0, v0, :cond_8

    const-string v0, "MODE_OPAQUE_LIGHT"

    goto :goto_0

    .line 256
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    const-string v0, "MODE_TRANSLUCENT_LIGHTS_OUT"

    goto :goto_0

    .line 257
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    const-string v0, "MODE_FULLY_TRANSPARENT_LIGHTS_OUT"

    goto :goto_0

    .line 258
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    const-string v0, "MODE_TRANSLUCENT_NON_SKINNABLE"

    goto :goto_0

    .line 259
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 260
    const-string v0, "MODE_TRANSLUCENT_LIGHTS_OUT_NON_SKINNABLE"

    goto :goto_0

    .line 261
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected applyModeBackground(IIZ)V
    .locals 3
    .param p1, "oldMode"    # I
    .param p2, "newMode"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getBackgroundLayer(I)I

    move-result v2

    if-eqz p3, :cond_0

    const/16 v0, 0xc8

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->startTransition(II)V

    .line 234
    return-void

    .line 232
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishAnimations()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->finishAnimation()V

    .line 266
    return-void
.end method

.method protected getBackgroundLayer(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x4

    .line 187
    packed-switch p1, :pswitch_data_0

    .line 219
    :goto_0
    :pswitch_0
    return v0

    .line 190
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 194
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 197
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 203
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 209
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 212
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 215
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    return v0
.end method

.method protected isLightsOut(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 272
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onTransition(IIZ)V
    .locals 1
    .param p1, "oldMode"    # I
    .param p2, "newMode"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 224
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/BarTransitions;->HIGH_END:Z

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->applyModeBackground(IIZ)V

    .line 227
    :cond_0
    return-void
.end method

.method protected setResourceIds(IIIIIIII)V
    .locals 4
    .param p1, "gradientResourceId"    # I
    .param p2, "nonSkinnableGradientResourceId"    # I
    .param p3, "semiTransparentResourceId"    # I
    .param p4, "fullyTransparentResourceId"    # I
    .param p5, "opaqueResourceId"    # I
    .param p6, "opaqueLightResourceId"    # I
    .param p7, "opaqueLightsOutResourceId"    # I
    .param p8, "warningResourceId"    # I

    .prologue
    .line 166
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 168
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 170
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    const/4 v2, 0x1

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 172
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    const/4 v2, 0x2

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 174
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    const/4 v2, 0x3

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 176
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    const/4 v2, 0x4

    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 178
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    const/4 v2, 0x5

    invoke-virtual {v0, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 180
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    const/4 v2, 0x6

    invoke-virtual {v0, p7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 182
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    const/4 v2, 0x7

    invoke-virtual {v0, p8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 184
    return-void
.end method

.method public transitionTo(IZ)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 141
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/BarTransitions;->HIGH_END:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->isOpaque(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    const/4 p1, 0x0

    .line 144
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/BarTransitions;->HIGH_END:Z

    if-nez v1, :cond_1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    .line 145
    const/4 p1, 0x3

    .line 147
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    if-ne v1, p1, :cond_2

    .line 153
    :goto_0
    return-void

    .line 148
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    .line 149
    .local v0, "oldMode":I
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    .line 152
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->onTransition(IIZ)V

    goto :goto_0
.end method
