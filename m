Return-Path: <open-iscsi+bncBDTZTRGMXIFBBCMHUSDQMGQESKOONKQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 30EA03C2CCF
	for <lists+open-iscsi@lfdr.de>; Sat, 10 Jul 2021 04:18:51 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id x6-20020ab036e60000b02902994703ad42sf4559200uau.19
        for <lists+open-iscsi@lfdr.de>; Fri, 09 Jul 2021 19:18:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625883530; cv=pass;
        d=google.com; s=arc-20160816;
        b=wvYLjruLA6P/c5G7o6HCxtcMzNUnSxe6bRZlR6jsMkT5i+Su2ORFH6x0Fdo1QP82p0
         WzB0BmlLIP6ih7Y0fXljP4bCgMihybtq9kio9GrSEjAd6IUkvwsGE7Ke3RBQLN8O49ti
         3zkpGpwKBNFggoXQKRe3k0EVrJCJx8+Dy55okkducIUNa7PUvgFIW2T+ZNx5gHr9QLsg
         ULSgQrdrPisdV8KdYtTmEgm7iRxROlzt1Yh8bBvdlkvG3VjEReutjwY3yd7js/9Pfbsu
         yJBW6AuucOsrC/aoqYO+QKMrXs/KY82u7LAWnkpY9KOJaRtUO0GlXGkwGEyFPtJGq81v
         IxzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=4poLp9Psfz62YojJlYK9S2UjiRKkP8cboyuM7+DemgM=;
        b=rxlRFxkxmOwM6PnK56h6z1WbLqpiHds7bTPydYp7FmmDLQQNL/CzqP7vtzG9TQ54AO
         npmEPO+L0UpRkxzgKgwreny3OCU7o6ssaJisDlbnDnIFea0OCB4AgmMiBEakPhJjwdAl
         LLo9qoNSIvalIxMAD3giBeSDzzQrPXlXLp5FEdmp4tZR2hB6sdsPel2+k0/ACNNVeVcy
         9gOVIeaSODhfrf7VUgbbmCp+ukfCAPX3Bbn9utdrBb8QLSW3LhoFrR30HZH3EAlxzBze
         is9gJchgqzIqLwpOvjsT1E1LP+6FZMY+n05DSGgpOE0yUtBotyS1cZX5m1xv29ArmMKN
         4Dxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cAxKGVNs;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4poLp9Psfz62YojJlYK9S2UjiRKkP8cboyuM7+DemgM=;
        b=hPG+OmzKDFEB8z0d68jBznZDDzVz1LgkrNEOZDzWqH/TzHbTLHoJPj4SuaYOdP6XTk
         DWzw8e5bgCDJPsCUb5lN/ahKAlUhpsqlD0gxWKN9CPbAo5CeOv8JNH2PZKv4xh1fpfc/
         +Y2txswyJdvXj9ci3qIqSJkNqz3d9YjS+6LH2BJo7T94SQVdIfQMIuA0Z6BUWoTjaXVa
         ZQmV20+8CJTiR2s9osPKGc0xxKLRX9uRHdGPtIEsNkAVehrXBUwEi+ARXWxDL+tvXRq/
         qxsQr7hMxrz1rBAtFXsW5RwSRr1aupHJaowsJvB5ZkloUUyLaRMZJXLZgFOYBPO8U6As
         vFtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4poLp9Psfz62YojJlYK9S2UjiRKkP8cboyuM7+DemgM=;
        b=SHxdGevsM1WLqLSNo+mNmlHx0Ee6uEWt895n3k0VXLg8jVbLg7QS1BRKqxE0O1QiV+
         zz8VnMm0VB3myZSw6pxgnHrmge9U0a5TMJQOVpSoHhNJkTg5TUWMmAKE0oY3aAMwueia
         rCxacIS710p8Gn0CArIiVCpDlAOg3JrOz16LsXAXPcJOylB/a07fBp3sC1X28dyyMzpB
         eZd4+1odQh/OPQWkzpo5XCqfuDStd6z0AtUJvHR2w4NFM65B7Y08wj0l2elH5D1lUBa/
         Pk/SuRIyALe3PaI5JuzpBarLfPul8b1OtEzIxT6x0BafMOt1Xoop4i6wvtHR9v41xSFI
         NtVg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533KbFEx5VUsQ7K0f78ltQYjFAPMubZMBVzIv0SEcayPghlVy9B5
	ofTTU9zXlou9CrJh3Ev+XGY=
X-Google-Smtp-Source: ABdhPJyniLE+xWK2kiDL7sLWq/vQYTnSS2xQ91TxRTT+E62asjZNCevWXWge4GXodlOnj3Z6RIjvFA==
X-Received: by 2002:a67:ec13:: with SMTP id d19mr25490694vso.26.1625883530034;
        Fri, 09 Jul 2021 19:18:50 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a67:c88e:: with SMTP id v14ls2301046vsk.0.gmail; Fri, 09 Jul
 2021 19:18:49 -0700 (PDT)
X-Received: by 2002:a67:7942:: with SMTP id u63mr21604147vsc.37.1625883529264;
        Fri, 09 Jul 2021 19:18:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625883529; cv=none;
        d=google.com; s=arc-20160816;
        b=UzJ+9/7qtAmY4rj8NQSGtvF8c8CT1V4X09x4s+u7VEhEDp35zJ3k51LA7xgrFvZn8w
         OAZysNVQ0udfJxxuCiMvrfdDQiuEeAUgP6LjdC3AUwsrkrJi1ncPm4hXlbBj55+GdPu8
         EbjD0LepHgRWkSr2lTSaBVr2eLQHlHPlpx6uz7gpj3Pr0YyTtI7AsLh70ByKq3wsejt8
         MCNUnIEScbIgOddEkr+dDK2wWnrAdaTA1QJTCCL/B4mHuDroDCkkGUok/uhs4NOqA7j+
         a2nXBxVW+/5C/Sg2W4vo3jvKdlomOMPcLyY1k75dg4XZrXufTGdhHQbOzOa8wIQ8FumN
         8PjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WEmKjgOhNZycWu5rb63sT8nF1WzflP4bb77toJ5kgiA=;
        b=QfMgdyqPTuTmq/YhvtgobckJivP5P7IoPVd96n/v/5zk7MP6kLjJT/KLcjFRWj/Aof
         bO73OUf/PLpbFTBHmcffS+MErkvWKHTH3rD/rT5RND0Io1HVAGVtmw2m6cgAnL/t2LVU
         keJ/lZrMo+ZaCQF7NqnHvZP16BDXhH05tUIM4mvXzF5XyUs0nz1Ukwq8L7hKZ0G0WLLZ
         b56itFJg1W5Rs8WQTSJwRxFzza0XPS18UgmOOQy/oeU9NAsPBm9+9DNbnyKjv4w1uQrQ
         1nqCTsC+GbIKffMt8ZjWTFIUOWKtZJhLCTwt0B1SbE3J1Ff/7lkqzJnqRRvbnaHholrN
         T8IA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cAxKGVNs;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m8si1025948vko.5.2021.07.09.19.18.49
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Jul 2021 19:18:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 57137613BE;
	Sat, 10 Jul 2021 02:18:47 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mike Christie <michael.christie@oracle.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-rdma@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com
Subject: [PATCH AUTOSEL 5.13 043/114] scsi: iscsi: Stop queueing during ep_disconnect
Date: Fri,  9 Jul 2021 22:16:37 -0400
Message-Id: <20210710021748.3167666-43-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710021748.3167666-1-sashal@kernel.org>
References: <20210710021748.3167666-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=cAxKGVNs;       spf=pass
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

[ Upstream commit 891e2639deae721dc43764a44fa255890dc34313 ]

During ep_disconnect we have been doing iscsi_suspend_tx/queue to block new
I/O but every driver except cxgbi and iscsi_tcp can still get I/O from
__iscsi_conn_send_pdu() if we haven't called iscsi_conn_failure() before
ep_disconnect. This could happen if we were terminating the session, and
the logout timed out before it was even sent to libiscsi.

Fix the issue by adding a helper which reverses the bind_conn call that
allows new I/O to be queued. Drivers implementing ep_disconnect can use this
to make sure new I/O is not queued to them when handling the disconnect.

Link: https://lore.kernel.org/r/20210525181821.7617-3-michael.christie@oracle.com
Reviewed-by: Lee Duncan <lduncan@suse.com>
Signed-off-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/infiniband/ulp/iser/iscsi_iser.c |  1 +
 drivers/scsi/be2iscsi/be_main.c          |  1 +
 drivers/scsi/bnx2i/bnx2i_iscsi.c         |  1 +
 drivers/scsi/cxgbi/cxgb3i/cxgb3i.c       |  1 +
 drivers/scsi/cxgbi/cxgb4i/cxgb4i.c       |  1 +
 drivers/scsi/libiscsi.c                  | 70 +++++++++++++++++++++---
 drivers/scsi/qedi/qedi_iscsi.c           |  1 +
 drivers/scsi/qla4xxx/ql4_os.c            |  1 +
 drivers/scsi/scsi_transport_iscsi.c      | 10 +++-
 include/scsi/libiscsi.h                  |  1 +
 include/scsi/scsi_transport_iscsi.h      |  1 +
 11 files changed, 78 insertions(+), 11 deletions(-)

diff --git a/drivers/infiniband/ulp/iser/iscsi_iser.c b/drivers/infiniband/ulp/iser/iscsi_iser.c
index 8fcaa1136f2c..6baebcb6d14d 100644
--- a/drivers/infiniband/ulp/iser/iscsi_iser.c
+++ b/drivers/infiniband/ulp/iser/iscsi_iser.c
@@ -1002,6 +1002,7 @@ static struct iscsi_transport iscsi_iser_transport = {
 	/* connection management */
 	.create_conn            = iscsi_iser_conn_create,
 	.bind_conn              = iscsi_iser_conn_bind,
+	.unbind_conn		= iscsi_conn_unbind,
 	.destroy_conn           = iscsi_conn_teardown,
 	.attr_is_visible	= iser_attr_is_visible,
 	.set_param              = iscsi_iser_set_param,
diff --git a/drivers/scsi/be2iscsi/be_main.c b/drivers/scsi/be2iscsi/be_main.c
index 22cf7f4b8d8c..27c4f1598f76 100644
--- a/drivers/scsi/be2iscsi/be_main.c
+++ b/drivers/scsi/be2iscsi/be_main.c
@@ -5809,6 +5809,7 @@ struct iscsi_transport beiscsi_iscsi_transport = {
 	.destroy_session = beiscsi_session_destroy,
 	.create_conn = beiscsi_conn_create,
 	.bind_conn = beiscsi_conn_bind,
+	.unbind_conn = iscsi_conn_unbind,
 	.destroy_conn = iscsi_conn_teardown,
 	.attr_is_visible = beiscsi_attr_is_visible,
 	.set_iface_param = beiscsi_iface_set_param,
diff --git a/drivers/scsi/bnx2i/bnx2i_iscsi.c b/drivers/scsi/bnx2i/bnx2i_iscsi.c
index 1e6d8f62ea3c..b6c1da46d582 100644
--- a/drivers/scsi/bnx2i/bnx2i_iscsi.c
+++ b/drivers/scsi/bnx2i/bnx2i_iscsi.c
@@ -2276,6 +2276,7 @@ struct iscsi_transport bnx2i_iscsi_transport = {
 	.destroy_session	= bnx2i_session_destroy,
 	.create_conn		= bnx2i_conn_create,
 	.bind_conn		= bnx2i_conn_bind,
+	.unbind_conn		= iscsi_conn_unbind,
 	.destroy_conn		= bnx2i_conn_destroy,
 	.attr_is_visible	= bnx2i_attr_is_visible,
 	.set_param		= iscsi_set_param,
diff --git a/drivers/scsi/cxgbi/cxgb3i/cxgb3i.c b/drivers/scsi/cxgbi/cxgb3i/cxgb3i.c
index 203f938fca7e..f949a4e00783 100644
--- a/drivers/scsi/cxgbi/cxgb3i/cxgb3i.c
+++ b/drivers/scsi/cxgbi/cxgb3i/cxgb3i.c
@@ -117,6 +117,7 @@ static struct iscsi_transport cxgb3i_iscsi_transport = {
 	/* connection management */
 	.create_conn	= cxgbi_create_conn,
 	.bind_conn	= cxgbi_bind_conn,
+	.unbind_conn	= iscsi_conn_unbind,
 	.destroy_conn	= iscsi_tcp_conn_teardown,
 	.start_conn	= iscsi_conn_start,
 	.stop_conn	= iscsi_conn_stop,
diff --git a/drivers/scsi/cxgbi/cxgb4i/cxgb4i.c b/drivers/scsi/cxgbi/cxgb4i/cxgb4i.c
index 2c3491528d42..efb3e2b3398e 100644
--- a/drivers/scsi/cxgbi/cxgb4i/cxgb4i.c
+++ b/drivers/scsi/cxgbi/cxgb4i/cxgb4i.c
@@ -134,6 +134,7 @@ static struct iscsi_transport cxgb4i_iscsi_transport = {
 	/* connection management */
 	.create_conn	= cxgbi_create_conn,
 	.bind_conn		= cxgbi_bind_conn,
+	.unbind_conn	= iscsi_conn_unbind,
 	.destroy_conn	= iscsi_tcp_conn_teardown,
 	.start_conn		= iscsi_conn_start,
 	.stop_conn		= iscsi_conn_stop,
diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 4834219497ee..2aaf83678654 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -1387,23 +1387,32 @@ void iscsi_session_failure(struct iscsi_session *session,
 }
 EXPORT_SYMBOL_GPL(iscsi_session_failure);
 
-void iscsi_conn_failure(struct iscsi_conn *conn, enum iscsi_err err)
+static bool iscsi_set_conn_failed(struct iscsi_conn *conn)
 {
 	struct iscsi_session *session = conn->session;
 
-	spin_lock_bh(&session->frwd_lock);
-	if (session->state == ISCSI_STATE_FAILED) {
-		spin_unlock_bh(&session->frwd_lock);
-		return;
-	}
+	if (session->state == ISCSI_STATE_FAILED)
+		return false;
 
 	if (conn->stop_stage == 0)
 		session->state = ISCSI_STATE_FAILED;
-	spin_unlock_bh(&session->frwd_lock);
 
 	set_bit(ISCSI_SUSPEND_BIT, &conn->suspend_tx);
 	set_bit(ISCSI_SUSPEND_BIT, &conn->suspend_rx);
-	iscsi_conn_error_event(conn->cls_conn, err);
+	return true;
+}
+
+void iscsi_conn_failure(struct iscsi_conn *conn, enum iscsi_err err)
+{
+	struct iscsi_session *session = conn->session;
+	bool needs_evt;
+
+	spin_lock_bh(&session->frwd_lock);
+	needs_evt = iscsi_set_conn_failed(conn);
+	spin_unlock_bh(&session->frwd_lock);
+
+	if (needs_evt)
+		iscsi_conn_error_event(conn->cls_conn, err);
 }
 EXPORT_SYMBOL_GPL(iscsi_conn_failure);
 
@@ -2180,6 +2189,51 @@ static void iscsi_check_transport_timeouts(struct timer_list *t)
 	spin_unlock(&session->frwd_lock);
 }
 
+/**
+ * iscsi_conn_unbind - prevent queueing to conn.
+ * @cls_conn: iscsi conn ep is bound to.
+ * @is_active: is the conn in use for boot or is this for EH/termination
+ *
+ * This must be called by drivers implementing the ep_disconnect callout.
+ * It disables queueing to the connection from libiscsi in preparation for
+ * an ep_disconnect call.
+ */
+void iscsi_conn_unbind(struct iscsi_cls_conn *cls_conn, bool is_active)
+{
+	struct iscsi_session *session;
+	struct iscsi_conn *conn;
+
+	if (!cls_conn)
+		return;
+
+	conn = cls_conn->dd_data;
+	session = conn->session;
+	/*
+	 * Wait for iscsi_eh calls to exit. We don't wait for the tmf to
+	 * complete or timeout. The caller just wants to know what's running
+	 * is everything that needs to be cleaned up, and no cmds will be
+	 * queued.
+	 */
+	mutex_lock(&session->eh_mutex);
+
+	iscsi_suspend_queue(conn);
+	iscsi_suspend_tx(conn);
+
+	spin_lock_bh(&session->frwd_lock);
+	if (!is_active) {
+		/*
+		 * if logout timed out before userspace could even send a PDU
+		 * the state might still be in ISCSI_STATE_LOGGED_IN and
+		 * allowing new cmds and TMFs.
+		 */
+		if (session->state == ISCSI_STATE_LOGGED_IN)
+			iscsi_set_conn_failed(conn);
+	}
+	spin_unlock_bh(&session->frwd_lock);
+	mutex_unlock(&session->eh_mutex);
+}
+EXPORT_SYMBOL_GPL(iscsi_conn_unbind);
+
 static void iscsi_prep_abort_task_pdu(struct iscsi_task *task,
 				      struct iscsi_tm *hdr)
 {
diff --git a/drivers/scsi/qedi/qedi_iscsi.c b/drivers/scsi/qedi/qedi_iscsi.c
index 08c05403cd72..ef16537c523c 100644
--- a/drivers/scsi/qedi/qedi_iscsi.c
+++ b/drivers/scsi/qedi/qedi_iscsi.c
@@ -1401,6 +1401,7 @@ struct iscsi_transport qedi_iscsi_transport = {
 	.destroy_session = qedi_session_destroy,
 	.create_conn = qedi_conn_create,
 	.bind_conn = qedi_conn_bind,
+	.unbind_conn = iscsi_conn_unbind,
 	.start_conn = qedi_conn_start,
 	.stop_conn = iscsi_conn_stop,
 	.destroy_conn = qedi_conn_destroy,
diff --git a/drivers/scsi/qla4xxx/ql4_os.c b/drivers/scsi/qla4xxx/ql4_os.c
index ad3afe30f617..74d0d1bc208d 100644
--- a/drivers/scsi/qla4xxx/ql4_os.c
+++ b/drivers/scsi/qla4xxx/ql4_os.c
@@ -259,6 +259,7 @@ static struct iscsi_transport qla4xxx_iscsi_transport = {
 	.start_conn             = qla4xxx_conn_start,
 	.create_conn            = qla4xxx_conn_create,
 	.bind_conn              = qla4xxx_conn_bind,
+	.unbind_conn		= iscsi_conn_unbind,
 	.stop_conn              = iscsi_conn_stop,
 	.destroy_conn           = qla4xxx_conn_destroy,
 	.set_param              = iscsi_set_param,
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 441f0152193f..82491343e94a 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2964,7 +2964,7 @@ static int iscsi_if_ep_connect(struct iscsi_transport *transport,
 }
 
 static int iscsi_if_ep_disconnect(struct iscsi_transport *transport,
-				  u64 ep_handle)
+				  u64 ep_handle, bool is_active)
 {
 	struct iscsi_cls_conn *conn;
 	struct iscsi_endpoint *ep;
@@ -2981,6 +2981,8 @@ static int iscsi_if_ep_disconnect(struct iscsi_transport *transport,
 		conn->ep = NULL;
 		mutex_unlock(&conn->ep_mutex);
 		conn->state = ISCSI_CONN_FAILED;
+
+		transport->unbind_conn(conn, is_active);
 	}
 
 	transport->ep_disconnect(ep);
@@ -3012,7 +3014,8 @@ iscsi_if_transport_ep(struct iscsi_transport *transport,
 		break;
 	case ISCSI_UEVENT_TRANSPORT_EP_DISCONNECT:
 		rc = iscsi_if_ep_disconnect(transport,
-					    ev->u.ep_disconnect.ep_handle);
+					    ev->u.ep_disconnect.ep_handle,
+					    false);
 		break;
 	}
 	return rc;
@@ -3737,7 +3740,7 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 		conn = iscsi_conn_lookup(ev->u.b_conn.sid, ev->u.b_conn.cid);
 
 		if (conn && conn->ep)
-			iscsi_if_ep_disconnect(transport, conn->ep->id);
+			iscsi_if_ep_disconnect(transport, conn->ep->id, true);
 
 		if (!session || !conn) {
 			err = -EINVAL;
@@ -4656,6 +4659,7 @@ iscsi_register_transport(struct iscsi_transport *tt)
 	int err;
 
 	BUG_ON(!tt);
+	WARN_ON(tt->ep_disconnect && !tt->unbind_conn);
 
 	priv = iscsi_if_transport_lookup(tt);
 	if (priv)
diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
index 02f966e9358f..091f284bd6e9 100644
--- a/include/scsi/libiscsi.h
+++ b/include/scsi/libiscsi.h
@@ -424,6 +424,7 @@ extern int iscsi_conn_start(struct iscsi_cls_conn *);
 extern void iscsi_conn_stop(struct iscsi_cls_conn *, int);
 extern int iscsi_conn_bind(struct iscsi_cls_session *, struct iscsi_cls_conn *,
 			   int);
+extern void iscsi_conn_unbind(struct iscsi_cls_conn *cls_conn, bool is_active);
 extern void iscsi_conn_failure(struct iscsi_conn *conn, enum iscsi_err err);
 extern void iscsi_session_failure(struct iscsi_session *session,
 				  enum iscsi_err err);
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index fc5a39839b4b..8874016b3c9a 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -82,6 +82,7 @@ struct iscsi_transport {
 	void (*destroy_session) (struct iscsi_cls_session *session);
 	struct iscsi_cls_conn *(*create_conn) (struct iscsi_cls_session *sess,
 				uint32_t cid);
+	void (*unbind_conn) (struct iscsi_cls_conn *conn, bool is_active);
 	int (*bind_conn) (struct iscsi_cls_session *session,
 			  struct iscsi_cls_conn *cls_conn,
 			  uint64_t transport_eph, int is_leading);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210710021748.3167666-43-sashal%40kernel.org.
