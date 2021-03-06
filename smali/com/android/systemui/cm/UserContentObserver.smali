.class public abstract Lcom/android/systemui/cm/UserContentObserver;
.super Landroid/database/ContentObserver;
.source "UserContentObserver.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mUpdateRunnable:Ljava/lang/Runnable;

.field private mUserSwitchObserver:Landroid/app/IUserSwitchObserver;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 35
    new-instance v0, Lcom/android/systemui/cm/UserContentObserver$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/cm/UserContentObserver$1;-><init>(Lcom/android/systemui/cm/UserContentObserver;)V

    iput-object v0, p0, Lcom/android/systemui/cm/UserContentObserver;->mUserSwitchObserver:Landroid/app/IUserSwitchObserver;

    .line 49
    iput-object p1, p0, Lcom/android/systemui/cm/UserContentObserver;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Lcom/android/systemui/cm/UserContentObserver$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/cm/UserContentObserver$2;-><init>(Lcom/android/systemui/cm/UserContentObserver;)V

    iput-object v0, p0, Lcom/android/systemui/cm/UserContentObserver;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/cm/UserContentObserver;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/cm/UserContentObserver;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/cm/UserContentObserver;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/cm/UserContentObserver;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/cm/UserContentObserver;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/cm/UserContentObserver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected observe()V
    .locals 3

    .prologue
    .line 60
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/cm/UserContentObserver;->mUserSwitchObserver:Landroid/app/IUserSwitchObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UserContentObserver"

    const-string v2, "Unable to register user switch observer!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/cm/UserContentObserver;->update()V

    .line 80
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/cm/UserContentObserver;->update()V

    .line 85
    return-void
.end method

.method protected unobserve()V
    .locals 3

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/cm/UserContentObserver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/cm/UserContentObserver;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/cm/UserContentObserver;->mUserSwitchObserver:Landroid/app/IUserSwitchObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UserContentObserver"

    const-string v2, "Unable to unregister user switch observer!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected abstract update()V
.end method
