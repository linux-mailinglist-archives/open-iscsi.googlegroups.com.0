Return-Path: <open-iscsi+bncBDA4VMEL3QNRBXEGZ3YAKGQEZHFJQWQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 116771317F9
	for <lists+open-iscsi@lfdr.de>; Mon,  6 Jan 2020 19:58:37 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id j23sf10891129lji.23
        for <lists+open-iscsi@lfdr.de>; Mon, 06 Jan 2020 10:58:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578337116; cv=pass;
        d=google.com; s=arc-20160816;
        b=FKKQPlRzGaE+MHFJA4DEh2kBDd5qGmucrZyCmAb4ySpXR3Bd4CDDtGaGaigWSERSx7
         jBlNYlB29SFFfaBxh9mLvXgV0Ovah36DYNdyeHczYQ3NhiWToOE/VYSrbVuCqGoCJ/gH
         NwMVdR+O4Zr+NkLe25ChVHtDNLT+2+n1ZztevmIO5oG8WBazl3t0PkW6AqcIt+zJN+kK
         WIw9vwN3kcmwubQd6V7D5H7QjQHHUOFGBVCEigVdEd+U9xboKThElvKsDIVMIxacwpzq
         ut42CZTlflpsf4JTNOYILnCQ/ol5N0u61f1WoUHrtwJU4Dfz+cn8D4/WQs57Bf8wg/Bq
         3iAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=OGlj4k6d6IK6oyUMtlquUlyyAUF0kSJ6i6rFDVux7d0=;
        b=ZHzjW9aoW8cLMKLpe4ddmVp2Vya8eIrC2H17tazz7ga8B7H0jy5Gc8QpO1wcec9tZ7
         xHOjRaUdoxhvRORvXr9SzKESoah2lBL/bmB0jyNF6/Qi3ih5jNOWNXGbiWTblntSdW3W
         vuP7Vyz/IOC9qop5xwu2AG7PsL31RkUlqQyRzJIXDclhtJ/kPYzHQ0qAf4SWNhh7EM1k
         a37CiW9kqrhn/rZ9xtTIPTBUcxlJCOQnkYK5pkmb1NmV78wCMiW/EHiU2TW0iv09dFoq
         s4KeuxwKkPhIh+4GSCRsqFJy83clyHqJOM8Da3WvZoOJTxeH6YBk1ZGH0LUR2+f2q2Ax
         0fTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OGlj4k6d6IK6oyUMtlquUlyyAUF0kSJ6i6rFDVux7d0=;
        b=C6dSc6LZUhChLRq3SSSW7d57SDNmGPm4SwEe7BpjrMDM+TpftzNtcqeyY6z81J0Cbf
         cXwhlrS4qX0I9mlAn0fvNmiE1Izm8tu5qXe1GWqwvQF5ftWPlP7ds1+q6lCOk+3i0IuS
         2EPcixz057VgPIdMmcbeotEgBG++Sx6lOL826kndl7WRiZaRwuQl8ug9OfwvpMV7LCx8
         lGDd5hC6fe/6zB/tnL327nXh7HSSMGSpZo65XI0cTxW3dzugQ7vv3k6iFUpx5Xaoe3FY
         2mkxy2QOjx/7KNJDKNK2CvK66drX5HaVrOump3gQ4J+a6kgkzn07yRbZaUw0HE9gb5mH
         NUEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OGlj4k6d6IK6oyUMtlquUlyyAUF0kSJ6i6rFDVux7d0=;
        b=S3K8A1aa9F1Py7QJ4veWpvho53VjEOHYRCEWYQRLX0KUucct36Lr7oCiM1bJwlC+m1
         oGmkTnX7NjUj9zXVGN3+YaVzeK9B9/SzFu5HcSz15YYIeUh0N0Qo4wChUNSgq+Cf+1h3
         rB68kMqBNzaSwOFsdOJgkICZ+axHKBuk3kFl+Dt240DzplJugu8XrSeX8PKhEKY9pLhp
         kBfaOKBs6+vE2Em0TG+QCSmUMhHkTvUOZtuco8w+l5kcpjBAglVwXf4JSZLJE9rw2pcd
         QvY49g+bJ85mAER+nS+Q4M5Inzzle9xtG4Tg+ajzDvlC2dyn8MsyL8UxXQ+J+4Qffzpe
         ulBw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWcy0dSpGP5uLaJazGWTF6g0CNH3kJfL3awcmpxd4DUWeEgRCnp
	KtpRj3WYBArWO/MLGo+dDNM=
X-Google-Smtp-Source: APXvYqzloopeJmgROa3OXeZQkTLN9JDo66UlNaY7qJ/BDm8laM+XANUECvhs44TPc6wG8H8CZy5KVg==
X-Received: by 2002:ac2:5503:: with SMTP id j3mr56751982lfk.104.1578337116643;
        Mon, 06 Jan 2020 10:58:36 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:651c:1051:: with SMTP id x17ls5932634ljm.8.gmail; Mon,
 06 Jan 2020 10:58:36 -0800 (PST)
X-Received: by 2002:a2e:94c8:: with SMTP id r8mr59120127ljh.28.1578337116087;
        Mon, 06 Jan 2020 10:58:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578337116; cv=none;
        d=google.com; s=arc-20160816;
        b=kix1gOqkj15QEUMTn5z8rB2QfX4GS7QA38Gu8dHxxYtL/HqjxPJ16PcsFbEjU+YL/C
         g0EHHY7Q6zXI73FhWMGhDk1Aa6um055Nladd0opeurIlkO7HJ7cqh4ANMacyxTM0cpyi
         xmeiTyZKr5ztpC7G18SYHewHCM7VoH1p1Qrb36q7DamKlyicBYxV6r9uhUa07nVrErn3
         Os5J1LYaj/H0KT3z5+ZeFcukl7srJZ5YdFvCz5C5EKtS9X0MOzZ3lILQyXfKBBrPH0yp
         A3uzxOThbwF0B6DaiVdpQfu21OOYJuDa9MGOaCla/xR2HXyoFmUEOx72kBMBhQjXHSJR
         SvBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=nY2KUYgz5So0CtoFPu4OQGNPz4ISY1W30/dWTP1diRM=;
        b=Xemm86ifx4mQkMRDIFoK9MZrMoJSzgS2N8LlztO80hMht6qCnvO94013rI23qM4w0k
         MOeTENLi5BCmL40NVjbQsasob16pdZF/BST80HOJVL2e1Ct56+wWHvmj1FelMCJxYz+1
         VCjZZgrdD10gjh4Wbcv6KzvMdJSlYvBoMquEpC47cgsc4qxxYE+0ooBHUgY7gtuYkxzg
         PKM0IJJV5G/ESvJMYUdSMBTBrgkbyF7LfQqd427CJFdt8QU5NGLFK5iFzrJJZoQKpOpk
         XtiauwqoZ2svFRJ8fqJMxXLXVXnPmFqhJx4htl2N+4bC7LUbCnaBBuUBy0fYBbgf1yan
         hy9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id v16si2730055lfd.2.2020.01.06.10.58.36
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 06 Jan 2020 10:58:36 -0800 (PST)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from localhost (unknown [IPv6:2610:98:8005::147])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: krisman)
	by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 5375929196F;
	Mon,  6 Jan 2020 18:58:35 +0000 (GMT)
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: gregkh@linuxfoundation.org
Cc: rafael@kernel.org,
	lduncan@suse.com,
	cleech@redhat.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	open-iscsi@googlegroups.com,
	linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	Gabriel Krisman Bertazi <krisman@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 3/3] iscsi: Fail session and connection on transport registration failure
Date: Mon,  6 Jan 2020 13:58:17 -0500
Message-Id: <20200106185817.640331-4-krisman@collabora.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200106185817.640331-1-krisman@collabora.com>
References: <20200106185817.640331-1-krisman@collabora.com>
MIME-Version: 1.0
X-Original-Sender: krisman@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of krisman@collabora.com designates 46.235.227.227 as
 permitted sender) smtp.mailfrom=krisman@collabora.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

If the transport cannot be registered, the session/connection creation
needs to be failed early to let the initiator know.  Otherwise, the
system will have an outstanding connection that cannot be used nor
removed by open-iscsi. The result is similar to the error below,
triggered by injecting a failure in the transport's registration path.

openiscsi reports success:

root@debian-vm:~#  iscsiadm -m node -T iqn:lun1 -p 127.0.0.1 -l
Logging in to [iface: default, target: iqn:lun1, portal: 127.0.0.1,3260]
Login to [iface: default, target: iqn:lun1, portal:127.0.0.1,3260] successful.

But cannot remove the session afterwards, since the kernel is in an
inconsistent state.

root@debian-vm:~#  iscsiadm -m node -T iqn:lun1 -p 127.0.0.1 -u
iscsiadm: No matching sessions found

Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index ed8d9709b9b9..2b732b7a9a5b 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2093,7 +2093,12 @@ int iscsi_add_session(struct iscsi_cls_session *session, unsigned int target_id)
 					 "could not register session's dev\n");
 		goto release_ida;
 	}
-	transport_register_device(&session->dev);
+	err = transport_register_device(&session->dev);
+	if (err) {
+		iscsi_cls_session_printk(KERN_ERR, session,
+					 "could not register transport's dev\n");
+		goto release_dev;
+	}
 
 	spin_lock_irqsave(&sesslock, flags);
 	list_add(&session->sess_list, &sesslist);
@@ -2103,6 +2108,8 @@ int iscsi_add_session(struct iscsi_cls_session *session, unsigned int target_id)
 	ISCSI_DBG_TRANS_SESSION(session, "Completed session adding\n");
 	return 0;
 
+release_dev:
+	device_del(&session->dev);
 release_ida:
 	if (session->ida_used)
 		ida_simple_remove(&iscsi_sess_ida, session->target_id);
@@ -2263,7 +2270,12 @@ iscsi_create_conn(struct iscsi_cls_session *session, int dd_size, uint32_t cid)
 					 "register connection's dev\n");
 		goto release_parent_ref;
 	}
-	transport_register_device(&conn->dev);
+	err = transport_register_device(&conn->dev);
+	if (err) {
+		iscsi_cls_session_printk(KERN_ERR, session, "could not "
+					 "register transport's dev\n");
+		goto release_conn_ref;
+	}
 
 	spin_lock_irqsave(&connlock, flags);
 	list_add(&conn->conn_list, &connlist);
@@ -2272,6 +2284,8 @@ iscsi_create_conn(struct iscsi_cls_session *session, int dd_size, uint32_t cid)
 	ISCSI_DBG_TRANS_CONN(conn, "Completed conn creation\n");
 	return conn;
 
+release_conn_ref:
+	put_device(&conn->dev);
 release_parent_ref:
 	put_device(&session->dev);
 free_conn:
-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200106185817.640331-4-krisman%40collabora.com.
