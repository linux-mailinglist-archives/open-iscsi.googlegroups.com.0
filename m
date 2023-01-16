Return-Path: <open-iscsi+bncBDTZTRGMXIFBBB5TSWPAMGQE7XJZNTQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB6066C0D2
	for <lists+open-iscsi@lfdr.de>; Mon, 16 Jan 2023 15:04:58 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id l28-20020ac2555c000000b004cc8e53e69asf6673790lfk.18
        for <lists+open-iscsi@lfdr.de>; Mon, 16 Jan 2023 06:04:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1673877897; cv=pass;
        d=google.com; s=arc-20160816;
        b=rK98JgKRlmyb/tMg5RTUOfnClG66ZS9WDgaUC0wCcf18WYwYAVLl0effrKqeCMG56h
         gfgbU/hxYX8ZLjZJel8syKoE97EllWIfIV5GNmIa06XQdtbjpPQweQoZf6Wmj6KCu39K
         I4TyLNfNQdg9e5o3F19xgWVjAbdfFj/AZvIRXpvb7LKcv1A5UmUdAD6Mea5ugTxGnN8Q
         rtPFzYsxNtYfomJAPuw+ddDH+3llJqNJ3KQnNTSHHmvIFxi5rF1UKJNXmNqLdUrGY78K
         412VOSbiHUOCZWBu7FJ12mQnApaUltXX54Aa/pCC4eJyKBTOK1G1OTMT3ozwR/WkUi7Y
         +oTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=QMcoFlcTtoPrdz32ug4ObaTCgOAK8msaGb3OMbfIxIk=;
        b=a5c7wnHPNqMYT9RrViki0dGTBGFAMtmaA2AKzJd8XT+Gg1ObtoSjfRrG4sd0u6+anV
         GfVPbxDcoxsoVgwnbrfW9wTiLudRAB+09vMg1uy6I0ZeXqgi4XEyja0hDyO9F+pX+qVM
         9nikscu5w6Cklkr/6fMuTVruTRhccNZgaiLm+QjmeQ/UdsKgRct1hBhlJo+1fTojZ4h8
         EZpSDzM8tJEM93A4llEYSZ/l+gwow61yS9BBhq+WZNHO1iwFMEdu2QzMnAWE9K7PV2tQ
         RbcPH/7+JHzqQyQ88mmOkNx5La0cxipFOT9H1LiZcRUhPtXo0piN+T8EGYWSpPFD8n12
         28Hg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DiYquva7;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QMcoFlcTtoPrdz32ug4ObaTCgOAK8msaGb3OMbfIxIk=;
        b=gmLoovh1R+uCDcFBK2fUAac/jlDlSbJFdzfl5hMFb4PIE8YD4FcrL7ECbH1EEEXHch
         82qmHbv7CqX+5X5QNsDyzhT3CWLIIqhvoT6tSbFCZT9Sd+MD4mdvDxnAInCvi1/yGrof
         0CfESuRAabXvd1aFktiqCEuXDJKdznXag5rU8z9Go8Xl09YJGPh9u4ykSPetOhvV0hhT
         86TnYB0CpEbjZQaVNVP+pEv71C1BgyZibD4ynrapKQmhQ5SIS9mecl+sJQBH7JXKqV/s
         hmWUTHC/ZKVKN7ProQj3Uv4REG8E/+qypAmOjReQtERWsLGRWpiw/BuzEesqRHJe7UlM
         AZtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QMcoFlcTtoPrdz32ug4ObaTCgOAK8msaGb3OMbfIxIk=;
        b=qXCyeRLa0d88B8XebwfENfFZ50EWDPoLfE+2GKKHchs2PEriTJLXqIldwFmaLWodMi
         xMPuXdD/1rdgslzdao/ExqrYBM6ffmQWTpe9orqq3Lsxxap8ofoqc/CRNnUsiGeEiNNr
         /ji2g/A3/QkmxYMsg5SKBaSpQTuM0D+Tk2WmvFx2cQX5J+SvgBGIjSUZwXJeT9Od5FfX
         ShYg7W2Gqm9zcEWVDvwuxZEikAwNcgD3u5hDAwvo6K3LT2SbmJz+Wl2x2bfnZvXgZhul
         xH3xF5fL6zLRMrP4yVhHWSDvSg+XFhdjPabnWGo4j5Pywdmy4IoNFTMfySXRh3eOwhQw
         AGgw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AFqh2kqmsl9PoXK50oO0iWKZH0flC9UbMWx5UyQP7vwFUQnH8WYej6zK
	Ny3nzNvRbQmIrznf6RotR9Q=
X-Google-Smtp-Source: AMrXdXu7UtOA4fbFqxHw2ikfsur7AzrO6ssBU/oQ0+PqEhH8HZtK7G+zti63cnpdZBf55NRZ15NAkw==
X-Received: by 2002:a05:6512:68b:b0:4cc:b784:c184 with SMTP id t11-20020a056512068b00b004ccb784c184mr1619806lfe.641.1673877897440;
        Mon, 16 Jan 2023 06:04:57 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6512:314f:b0:4cf:ff9f:bbfd with SMTP id
 s15-20020a056512314f00b004cfff9fbbfdls1017872lfi.1.-pod-prod-gmail; Mon, 16
 Jan 2023 06:04:53 -0800 (PST)
X-Received: by 2002:a05:6512:3d1d:b0:4cd:c7b8:eb49 with SMTP id d29-20020a0565123d1d00b004cdc7b8eb49mr4875070lfv.52.1673877893835;
        Mon, 16 Jan 2023 06:04:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1673877893; cv=none;
        d=google.com; s=arc-20160816;
        b=V6D2jRicCmw4sbBc1TwhHj1tOvxFnnwPnCjkSq2XCT+nctpJ/mKdezwMjpGmExWeia
         S9I7nrUtbvj/9Mpj/XCmOJUU30uKlyUst2+z1nXCe1Wab3qIBTuw+Ba2+V8+olyZPf2Y
         8desIMH8lnuuAchmEBjlrNI2tI1dGFa2CtFtqJm9zAEtwNCTMfP68GBrVjU1asTfNrCB
         nUOkehWPj63q+4cpebfuiyZ+tLwN3HosvUNxLXDVO4STAMh+UgMfEcA7UG1PYx/qeQZK
         HGrnmpFQ+ZQE8aSAqEmrzCl6IB1A2yCPMqJHsYifE6xn9zM2z4YbT8+Sio2SKDW7mRAB
         ZGMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=z7MjMPHB6kW6YMOoq30CV+HE6yS2hhYM4QpFnYgxnbw=;
        b=cIJGObHggPCg0ovMza9vZJAXFEJMYjvIfUzoIxiZCWSR839xPxo8jeECGoCq4jF+ve
         gRERVhAkNFWk/S92tZMg+9+Jxq8R2WNc/ey7NNkpHB6J3KWgo98gmMe1Nn/sy9y5qXUq
         t6/AyMXNrhl3bspK5pO997tTJORheEf0EH87+jOyKBiIUGFF9cLafb+L0otJDuNbvBan
         LQayTc+GwMnyv0X/zqpcyHyD/wt+4t0MBOlmOpVcanJHw8kQAcRSxmFnxCBtqRTksvOZ
         9SHBhNGKnKwb2O3mDA/x/vXE37ejoP7+HJHxUhFJcBKnBjIF5/0JgWFGqgRj4H0zHBUY
         psJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DiYquva7;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id v7-20020a056512348700b004d09f629f63si419273lfr.8.2023.01.16.06.04.53
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Jan 2023 06:04:53 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 4386FB80F99;
	Mon, 16 Jan 2023 14:04:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3DB7C433F0;
	Mon, 16 Jan 2023 14:04:50 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Wenchao Hao <haowenchao@huawei.com>,
	Mike Christie <michael.christie@oracle.com>,
	Wu Bo <wubo40@huawei.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	lduncan@suse.com,
	cleech@redhat.com,
	jejb@linux.ibm.com,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.10 01/17] scsi: iscsi: Fix multiple iSCSI session unbind events sent to userspace
Date: Mon, 16 Jan 2023 09:04:32 -0500
Message-Id: <20230116140448.116034-1-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=DiYquva7;       spf=pass
 (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted
 sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Wenchao Hao <haowenchao@huawei.com>

[ Upstream commit a3be19b91ea7121d388084e8c07f5b1b982eb40c ]

It was observed that the kernel would potentially send
ISCSI_KEVENT_UNBIND_SESSION multiple times. Introduce 'target_state' in
iscsi_cls_session() to make sure session will send only one unbind session
event.

This introduces a regression wrt. the issue fixed in commit 13e60d3ba287
("scsi: iscsi: Report unbind session event when the target has been
removed"). If iscsid dies for any reason after sending an unbind session to
kernel, once iscsid is restarted, the kernel's ISCSI_KEVENT_UNBIND_SESSION
event is lost and userspace is then unable to logout. However, the session
is actually in invalid state (its target_id is INVALID) so iscsid should
not sync this session during restart.

Consequently we need to check the session's target state during iscsid
restart.  If session is in unbound state, do not sync this session and
perform session teardown. This is OK because once a session is unbound, we
can not recover it any more (mainly because its target id is INVALID).

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Link: https://lore.kernel.org/r/20221126010752.231917-1-haowenchao@huawei.com
Reviewed-by: Mike Christie <michael.christie@oracle.com>
Reviewed-by: Wu Bo <wubo40@huawei.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/scsi_transport_iscsi.c | 50 ++++++++++++++++++++++++++---
 include/scsi/scsi_transport_iscsi.h |  9 ++++++
 2 files changed, 54 insertions(+), 5 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index ef7cd7520e7c..092bd6a3d64a 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1674,6 +1674,13 @@ static const char *iscsi_session_state_name(int state)
 	return name;
 }
 
+static char *iscsi_session_target_state_name[] = {
+	[ISCSI_SESSION_TARGET_UNBOUND]   = "UNBOUND",
+	[ISCSI_SESSION_TARGET_ALLOCATED] = "ALLOCATED",
+	[ISCSI_SESSION_TARGET_SCANNED]   = "SCANNED",
+	[ISCSI_SESSION_TARGET_UNBINDING] = "UNBINDING",
+};
+
 int iscsi_session_chkready(struct iscsi_cls_session *session)
 {
 	unsigned long flags;
@@ -1805,9 +1812,13 @@ static int iscsi_user_scan_session(struct device *dev, void *data)
 		if ((scan_data->channel == SCAN_WILD_CARD ||
 		     scan_data->channel == 0) &&
 		    (scan_data->id == SCAN_WILD_CARD ||
-		     scan_data->id == id))
+		     scan_data->id == id)) {
 			scsi_scan_target(&session->dev, 0, id,
 					 scan_data->lun, scan_data->rescan);
+			spin_lock_irqsave(&session->lock, flags);
+			session->target_state = ISCSI_SESSION_TARGET_SCANNED;
+			spin_unlock_irqrestore(&session->lock, flags);
+		}
 	}
 
 user_scan_exit:
@@ -1996,31 +2007,41 @@ static void __iscsi_unbind_session(struct work_struct *work)
 	struct iscsi_cls_host *ihost = shost->shost_data;
 	unsigned long flags;
 	unsigned int target_id;
+	bool remove_target = true;
 
 	ISCSI_DBG_TRANS_SESSION(session, "Unbinding session\n");
 
 	/* Prevent new scans and make sure scanning is not in progress */
 	mutex_lock(&ihost->mutex);
 	spin_lock_irqsave(&session->lock, flags);
-	if (session->target_id == ISCSI_MAX_TARGET) {
+	if (session->target_state == ISCSI_SESSION_TARGET_ALLOCATED) {
+		remove_target = false;
+	} else if (session->target_state != ISCSI_SESSION_TARGET_SCANNED) {
 		spin_unlock_irqrestore(&session->lock, flags);
 		mutex_unlock(&ihost->mutex);
-		goto unbind_session_exit;
+		ISCSI_DBG_TRANS_SESSION(session,
+			"Skipping target unbinding: Session is unbound/unbinding.\n");
+		return;
 	}
 
+	session->target_state = ISCSI_SESSION_TARGET_UNBINDING;
 	target_id = session->target_id;
 	session->target_id = ISCSI_MAX_TARGET;
 	spin_unlock_irqrestore(&session->lock, flags);
 	mutex_unlock(&ihost->mutex);
 
-	scsi_remove_target(&session->dev);
+	if (remove_target)
+		scsi_remove_target(&session->dev);
 
 	if (session->ida_used)
 		ida_simple_remove(&iscsi_sess_ida, target_id);
 
-unbind_session_exit:
 	iscsi_session_event(session, ISCSI_KEVENT_UNBIND_SESSION);
 	ISCSI_DBG_TRANS_SESSION(session, "Completed target removal\n");
+
+	spin_lock_irqsave(&session->lock, flags);
+	session->target_state = ISCSI_SESSION_TARGET_UNBOUND;
+	spin_unlock_irqrestore(&session->lock, flags);
 }
 
 static void __iscsi_destroy_session(struct work_struct *work)
@@ -2089,6 +2110,9 @@ int iscsi_add_session(struct iscsi_cls_session *session, unsigned int target_id)
 		session->ida_used = true;
 	} else
 		session->target_id = target_id;
+	spin_lock_irqsave(&session->lock, flags);
+	session->target_state = ISCSI_SESSION_TARGET_ALLOCATED;
+	spin_unlock_irqrestore(&session->lock, flags);
 
 	dev_set_name(&session->dev, "session%u", session->sid);
 	err = device_add(&session->dev);
@@ -4343,6 +4367,19 @@ iscsi_session_attr(def_taskmgmt_tmo, ISCSI_PARAM_DEF_TASKMGMT_TMO, 0);
 iscsi_session_attr(discovery_parent_idx, ISCSI_PARAM_DISCOVERY_PARENT_IDX, 0);
 iscsi_session_attr(discovery_parent_type, ISCSI_PARAM_DISCOVERY_PARENT_TYPE, 0);
 
+static ssize_t
+show_priv_session_target_state(struct device *dev, struct device_attribute *attr,
+			char *buf)
+{
+	struct iscsi_cls_session *session = iscsi_dev_to_session(dev->parent);
+
+	return sysfs_emit(buf, "%s\n",
+			iscsi_session_target_state_name[session->target_state]);
+}
+
+static ISCSI_CLASS_ATTR(priv_sess, target_state, S_IRUGO,
+			show_priv_session_target_state, NULL);
+
 static ssize_t
 show_priv_session_state(struct device *dev, struct device_attribute *attr,
 			char *buf)
@@ -4445,6 +4482,7 @@ static struct attribute *iscsi_session_attrs[] = {
 	&dev_attr_sess_boot_target.attr,
 	&dev_attr_priv_sess_recovery_tmo.attr,
 	&dev_attr_priv_sess_state.attr,
+	&dev_attr_priv_sess_target_state.attr,
 	&dev_attr_priv_sess_creator.attr,
 	&dev_attr_sess_chap_out_idx.attr,
 	&dev_attr_sess_chap_in_idx.attr,
@@ -4558,6 +4596,8 @@ static umode_t iscsi_session_attr_is_visible(struct kobject *kobj,
 		return S_IRUGO | S_IWUSR;
 	else if (attr == &dev_attr_priv_sess_state.attr)
 		return S_IRUGO;
+	else if (attr == &dev_attr_priv_sess_target_state.attr)
+		return S_IRUGO;
 	else if (attr == &dev_attr_priv_sess_creator.attr)
 		return S_IRUGO;
 	else if (attr == &dev_attr_priv_sess_target_id.attr)
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index 037c77fb5dc5..c4de15f7a0a5 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -236,6 +236,14 @@ enum {
 	ISCSI_SESSION_FREE,
 };
 
+enum {
+	ISCSI_SESSION_TARGET_UNBOUND,
+	ISCSI_SESSION_TARGET_ALLOCATED,
+	ISCSI_SESSION_TARGET_SCANNED,
+	ISCSI_SESSION_TARGET_UNBINDING,
+	ISCSI_SESSION_TARGET_MAX,
+};
+
 #define ISCSI_MAX_TARGET -1
 
 struct iscsi_cls_session {
@@ -262,6 +270,7 @@ struct iscsi_cls_session {
 	 */
 	pid_t creator;
 	int state;
+	int target_state;			/* session target bind state */
 	int sid;				/* session id */
 	void *dd_data;				/* LLD private data */
 	struct device dev;	/* sysfs transport/container device */
-- 
2.35.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230116140448.116034-1-sashal%40kernel.org.
