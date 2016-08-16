.class public Lcom/android/systemui/media/MediaProjectionPermissionActivity;
.super Landroid/app/Activity;
.source "MediaProjectionPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mPackageName:Ljava/lang/String;

.field private mPermanentGrant:Z

.field private mService:Landroid/media/projection/IMediaProjectionManager;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getMediaProjectionIntent(ILjava/lang/String;Z)Landroid/content/Intent;
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permanentGrant"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 155
    const-string v3, "device_policy"

    invoke-virtual {p0, v3}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 157
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->isScreenshotDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    invoke-static {p0}, Landroid/app/admin/PolicyNotification;->showScreenshotPolicyNotification(Landroid/content/Context;)V

    .line 159
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Screenshots have been disabled by EAS."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 162
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mService:Landroid/media/projection/IMediaProjectionManager;

    const/4 v4, 0x0

    invoke-interface {v3, p1, p2, v4, p3}, Landroid/media/projection/IMediaProjectionManager;->createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;

    move-result-object v2

    .line 164
    .local v2, "projection":Landroid/media/projection/IMediaProjection;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

    invoke-interface {v2}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 166
    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    .line 172
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 148
    iput-boolean p2, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPermanentGrant:Z

    .line 149
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, -0x1

    .line 131
    if-ne p2, v1, :cond_0

    .line 132
    const/4 v1, -0x1

    :try_start_0
    iget v2, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I

    iget-object v3, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPermanentGrant:Z

    invoke-direct {p0, v2, v3, v4}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getMediaProjectionIntent(ILjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    .line 144
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "MediaProjectionPermissionActivity"

    const-string v2, "Error granting projection permission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->setResult(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    iget-object v1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 140
    iget-object v1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 142
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    goto :goto_0

    .line 139
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_3

    .line 140
    iget-object v2, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 142
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    .line 69
    const-string v5, "media_projection"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 70
    .local v2, "b":Landroid/os/IBinder;
    invoke-static {v2}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mService:Landroid/media/projection/IMediaProjectionManager;

    .line 72
    iget-object v5, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    .line 118
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 80
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 81
    .local v0, "aInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v5, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mService:Landroid/media/projection/IMediaProjectionManager;

    iget v6, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I

    iget-object v7, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/media/projection/IMediaProjectionManager;->hasProjectionPermission(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 90
    const/4 v5, -0x1

    iget v6, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I

    iget-object v7, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getMediaProjectionIntent(ILjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->setResult(ILandroid/content/Intent;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v3

    .line 96
    .local v3, "e":Landroid/os/RemoteException;
    const-string v5, "MediaProjectionPermissionActivity"

    const-string v6, "Error checking projection permissions"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    goto :goto_0

    .line 82
    .end local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 83
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "MediaProjectionPermissionActivity"

    const-string v6, "unable to look up package name"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    goto :goto_0

    .line 101
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "appName":Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d016c

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d016f

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f040042

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    .line 112
    iget-object v5, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->create()V

    .line 114
    iget-object v5, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    const v6, 0x7f100169

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    iget-object v5, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 117
    iget-object v5, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 126
    :cond_0
    return-void
.end method
