Return-Path: <open-iscsi+bncBDTZTRGMXIFBBC4HUSDQMGQEVZ6ISDY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EEC3C2CD0
	for <lists+open-iscsi@lfdr.de>; Sat, 10 Jul 2021 04:18:52 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id g11-20020a0562140acbb02902c77e759580sf7815406qvi.4
        for <lists+open-iscsi@lfdr.de>; Fri, 09 Jul 2021 19:18:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625883531; cv=pass;
        d=google.com; s=arc-20160816;
        b=JS1uFjmbps/xHVUipH4R8iYIYrGtvnoPJGWzRyYBt0xZgvmLE6h6nB33ZdidGRObEF
         OF+cbZrp22UMq+LpeddhgwHWopNQsrXKxsARs0bD2RaX61pYY/+bixuHc6ZUSzZpHNYI
         0kxBdFHPKOmoT9DreSfGVwLKr3xC5jN5X9Zqhjx/08x1Tt2rLx091HO57SB1vLzRbBvZ
         HFTIDox1HjqSRqpdnNewvDgDpjwd7AZwT4Pc+w7sb82yuoWo7ENEJF0rmfypoplUVyBB
         xih3gEN2bWHFRsvdSAQ3tLv/5bJwYPmqDbl7ofy6zCPE/RdrlZ5NB/qpdBw6Ytd8l3N7
         GGHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=5r+0+hgpaT2XQDgUYt1YOu0K/sDi4zcfUhf2GsmxD8E=;
        b=GIG6Pcx0Qmuf0JtAn/vbFGJ8CyLZ9/eFJVmEM7phcJsbrmLoySp5yps0pcFlNH5ugx
         nBviAAC+cuSs8FRJapQgNkaRC+NCFlm2st+Ny4zsm5ZimQERA2g7hbXIAjjwpx4fUWdg
         IW3Ox5mkzerXZj0URkD23WOYMUr23JLNkycKn69d/o+8rf9ii0AQtoRgLJxqzYinmOO1
         LNr6zIt84zJzfZudpyIrXgieP65hyuScWSwUMN8YTdF5VVYn0oivyqe91aMgABXBh47V
         tyVn1MxXxUdsdskuBwYfd31PbW0qimhVnS1/2p5m81zhwHZjF28dx0dfTz1K9r254lom
         JWVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=khtPYnJe;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5r+0+hgpaT2XQDgUYt1YOu0K/sDi4zcfUhf2GsmxD8E=;
        b=KcD9gsomVoubJYwdRlH/Leu0lwNCComLniyQKlsI7VMqnju9IJRRUbBZ4ZsR4UQjke
         8leVfd64v/TW+GTVBYs/HFQNAi+msQTb0XHc6oW7rBwTrIQOaOcPSwVmQsHrF/HT5r/S
         K+VnrIXeyus/ItetLPMpsoktrmbKzWHvXxRt0P1DJ5+/5KT60Kxirvzj9AxdfPfSks6D
         3PxDFlGDxf9LIfno+GuLsfTnzQO3MBbwexqdp2NSrpZSajJDPMbJw8FH8JpMo+Wfpsri
         pDj15Jx74gMYW3REQT7lCXh/fc7h46BNpagBBRMjt1n7LfFcVQnyspmEFinaWrdYD81M
         HZQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5r+0+hgpaT2XQDgUYt1YOu0K/sDi4zcfUhf2GsmxD8E=;
        b=NxEGy+ywOEoxNg/PAOcN9MHEG+s3KSGKSwLplIRveuNN34m5tfeCz8vHZ1EGRH2CCr
         KKLq0uVmPo/AWTWVgzsvl95evX7eGuBC+GnRSWHpwv2jYhj0z/5+lyEsJz6bT8cBziYx
         l1EJi70vF9r1DidufaGaJw7kBkLtTMgfbXdmYxQsqZLo0G4HNTBseijrbcJXqAKrIJ7y
         jYkfdGKBliL5k2C6r+Kn7TzxBds/wKiYqFfts+DZgA2sjeW+qnxzCdEi3jQalQCr+NoG
         Itr5Dp7atUaj23sssQlICo42gB/YWDdNsKzXhRKLPFE6QnFTAShyXDCXTgxUDD1THOoR
         sC/g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530ZYRzIrlmINCGn6GaoVG6yJZ0HGk8wE3oYXTHuzvNlxBubZx4I
	4BT19PbSEJPfVYJKnwbGRgI=
X-Google-Smtp-Source: ABdhPJwve8S1CZwNy6ubci3IwenjdTqkrOIfHByqkSloWLiJ5i3J1TwVbtXgitFZuAGEDUKL5r23EA==
X-Received: by 2002:ac8:5d8d:: with SMTP id d13mr26063201qtx.87.1625883531252;
        Fri, 09 Jul 2021 19:18:51 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:b3cc:: with SMTP id b12ls2491944qvf.9.gmail; Fri, 09 Jul
 2021 19:18:50 -0700 (PDT)
X-Received: by 2002:a05:6214:ca1:: with SMTP id s1mr39327936qvs.43.1625883530768;
        Fri, 09 Jul 2021 19:18:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625883530; cv=none;
        d=google.com; s=arc-20160816;
        b=SkbFJaYSZIT3I4WsUpMd40MBVLKdNqkzrWKfWgbpakmwLTPw53oKyeNCz3FbXk/fXc
         ttn1b+CNrQvJ9jYoHegQnyfImrp3gHOEKGvWspgFEH50m9eX9W58iD+bM2HDJ4zj+LhL
         5OhL58DkOGUVP79mIPWlCyDFrtwbXx98amECV3Evdy3+KMerDF2K1bpP/sLVRH4nzbB1
         TcivpOthKuSA1RoYBS5s9HLOxL3Wa0UwfFOFbCp/JgzYZNldYeX3rQKafI5q/BLFVvpJ
         Ue+YqwjRK0mnamRkpN/k9qyT6t0XDl6ack2XHrwXvgyFsajhv3whkIzY5WhtcJyl0xgL
         DHTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ws8KYbcMTBSfivkdzQG2IkMWH/fogo+SJiu8UQSGb3I=;
        b=QOqVoYK1Mo38xHoc7MS973bYYgnmFf5HI9QPioPTJKTk1m5xDTyB0Evvu+jGiX3ktx
         oL/xgdB/nMIpSMbpmhbF3pz39wSpMO4MAtTLJxfL5MoqMVRYE4ShOUNdRCcD49pTcV8m
         RArg3wREuYULqoqVBW+J0by2evEe+S4CmftPBE5c5oZHcw5x4db1NHtGQtrcxjbZDlw8
         QT6H46zUiTi8P0H46ZReWuTL1Xzua6Jev6B2BTIj9BmY0M+A1KjlUVp13SX5Ho0BDNef
         8tPY5H7H1gg8q3gGJEL6Xc5rUTwMsZ06p+ZrOPx6rcBH12/PWIvBsl78ePzi048Hir2s
         5CqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=khtPYnJe;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n17si698045qkn.5.2021.07.09.19.18.50
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Jul 2021 19:18:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D9B36613F7;
	Sat, 10 Jul 2021 02:18:48 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mike Christie <michael.christie@oracle.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.13 044/114] scsi: iscsi: Add iscsi_cls_conn refcount helpers
Date: Fri,  9 Jul 2021 22:16:38 -0400
Message-Id: <20210710021748.3167666-44-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710021748.3167666-1-sashal@kernel.org>
References: <20210710021748.3167666-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=khtPYnJe;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Mike Christie <michael.christie@oracle.com>

[ Upstream commit b1d19e8c92cfb0ded180ef3376c20e130414e067 ]

There are a couple places where we could free the iscsi_cls_conn while it's
still in use. This adds some helpers to get/put a refcount on the struct
and converts an exiting user. Subsequent commits will then use the helpers
to fix 2 bugs in the eh code.

Link: https://lore.kernel.org/r/20210525181821.7617-11-michael.christie@oracle.com
Reviewed-by: Lee Duncan <lduncan@suse.com>
Signed-off-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/libiscsi.c             |  7 ++-----
 drivers/scsi/scsi_transport_iscsi.c | 12 ++++++++++++
 include/scsi/scsi_transport_iscsi.h |  2 ++
 3 files changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 2aaf83678654..ab39d7f65bbb 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -1361,7 +1361,6 @@ void iscsi_session_failure(struct iscsi_session *session,
 			   enum iscsi_err err)
 {
 	struct iscsi_conn *conn;
-	struct device *dev;
 
 	spin_lock_bh(&session->frwd_lock);
 	conn = session->leadconn;
@@ -1370,10 +1369,8 @@ void iscsi_session_failure(struct iscsi_session *session,
 		return;
 	}
 
-	dev = get_device(&conn->cls_conn->dev);
+	iscsi_get_conn(conn->cls_conn);
 	spin_unlock_bh(&session->frwd_lock);
-	if (!dev)
-	        return;
 	/*
 	 * if the host is being removed bypass the connection
 	 * recovery initialization because we are going to kill
@@ -1383,7 +1380,7 @@ void iscsi_session_failure(struct iscsi_session *session,
 		iscsi_conn_error_event(conn->cls_conn, err);
 	else
 		iscsi_conn_failure(conn, err);
-	put_device(dev);
+	iscsi_put_conn(conn->cls_conn);
 }
 EXPORT_SYMBOL_GPL(iscsi_session_failure);
 
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 82491343e94a..869cfc329da9 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2348,6 +2348,18 @@ int iscsi_destroy_conn(struct iscsi_cls_conn *conn)
 }
 EXPORT_SYMBOL_GPL(iscsi_destroy_conn);
 
+void iscsi_put_conn(struct iscsi_cls_conn *conn)
+{
+	put_device(&conn->dev);
+}
+EXPORT_SYMBOL_GPL(iscsi_put_conn);
+
+void iscsi_get_conn(struct iscsi_cls_conn *conn)
+{
+	get_device(&conn->dev);
+}
+EXPORT_SYMBOL_GPL(iscsi_get_conn);
+
 /*
  * iscsi interface functions
  */
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index 8874016b3c9a..eb6ed499324d 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -435,6 +435,8 @@ extern void iscsi_remove_session(struct iscsi_cls_session *session);
 extern void iscsi_free_session(struct iscsi_cls_session *session);
 extern struct iscsi_cls_conn *iscsi_create_conn(struct iscsi_cls_session *sess,
 						int dd_size, uint32_t cid);
+extern void iscsi_put_conn(struct iscsi_cls_conn *conn);
+extern void iscsi_get_conn(struct iscsi_cls_conn *conn);
 extern int iscsi_destroy_conn(struct iscsi_cls_conn *conn);
 extern void iscsi_unblock_session(struct iscsi_cls_session *session);
 extern void iscsi_block_session(struct iscsi_cls_session *session);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210710021748.3167666-44-sashal%40kernel.org.
