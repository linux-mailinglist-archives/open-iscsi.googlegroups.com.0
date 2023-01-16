Return-Path: <open-iscsi+bncBDTZTRGMXIFBBVFSSWPAMGQEKULOQ5Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id E7DED66C0BB
	for <lists+open-iscsi@lfdr.de>; Mon, 16 Jan 2023 15:04:06 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id h17-20020a5d9e11000000b007049a892316sf4068585ioh.7
        for <lists+open-iscsi@lfdr.de>; Mon, 16 Jan 2023 06:04:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1673877845; cv=pass;
        d=google.com; s=arc-20160816;
        b=DqbzSA7kxkQig7fx8fhFdISlZ8+/RSURDp5V8H8quwpQWBJHhw2cf9uOl8kAR3Q9H6
         legWmUz5WFt6exse7Zxd9zNfBjiWgv+iGIPSwzLa4NfyxDcyUF+BqE8BrcUDrZJC/cIY
         AhdbZu2K+fGmUrER5Q9QSzksTKDvbZsoE1P70J0qw5ez2T7gNceZhCi/2FFbjLc+O/CI
         6ZkVH4NHD2Zz+8Y7VxBX3Ge7ALdYdNzyBRDglo+MrX+rGH8N+tMUswjtTXyNrsoE/H6l
         aZh0KJOhvXD32VwXlhVREt0IyVGYYQa4z3G++ppBjygIiLwYla1CDw3qZxg465L0e5B9
         diLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=/+VDD8dTC7y2uUyp34CqBhprJW0jjrAU7aWIkzXzks8=;
        b=jcLQIN6Qa0DlmTT1+qeRVZ1vT8qYHDemP/7OzcVqmqrOzNDy1UO5CvP01qKzneXqMY
         NiJ6ecz466CphFcLMAeOAbsY3vwj0WmpmVsebNLTu05a37IeTFL/eE3yKXYSa7ybOisk
         JTHqzuXjOwlPDDFEFSksKtamaO9UekBbUca/DMEMsA26r5xkIPELyn7eXfFRi4Oul0Ue
         NWBtzodR5eiUE4Fdm6/eoBX0fOc7qXXHha7LDpwFN8inHE4lNvi/J08wciTLp4eahax7
         FKYgFQ5zANqOGrmf5+wP5JvhPMsPlMaSS0oSoWTT4RqRnXa5xidBliaEzkcQLFyTW6N9
         jgcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YPaPr4Sm;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/+VDD8dTC7y2uUyp34CqBhprJW0jjrAU7aWIkzXzks8=;
        b=Y0J0cgqiE09LM8NQisQcCa2yUVZkr4YyKQUMvSxHhPvLPZBRnPf5/D6WSGvQ3caTio
         gDhy/qpqtSu0ricT2KjsythZdrIeOp9pcNVsfrVZDB5MTNbg6P5xBo9nRkgy/Kv9X8F+
         RaJrMr6HT5d3LMrqUhwOtV4ChxNgbbD56oQvLZhr4AQqWHGByMqHlIkSkL/vnSoYJXsv
         gcDPV7M3RwDQWDfEUDKY7IaktkFOPSe6PshO6t/0UFKR2Zo2+fZ1UBECbeHpfigi9d8x
         9p0yKYPxUnCCgaW6ToqZj2diTXwRxxI2ZKnjZJ/jnBh2LnUYbat9uXa+qrWpatOzC5VD
         1cXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/+VDD8dTC7y2uUyp34CqBhprJW0jjrAU7aWIkzXzks8=;
        b=JHpex4ghVjXYoiMGI8Q/eMocSrVJ9RShejlpP4Y7ivfpU57vaBuOM/MumKOESBTUtj
         S+dlHLKyVZvPvdEnt+VDHLJSpldwGkGZTGnUGzXA6Qga2SsY5ca2sAJ7wCY9zPJ2tF1w
         90OihPgGs6m/kEal2g+2ZYnsPQIsut4ZnTGKbP0Kg0G464lkSZ3V+KYmpHfj/nJA/iNz
         zPqTIx5Inkt+nBJpw17ANoXr7GW3KKzlIuwNuD3Jl0r6Qq0akVjty4mZ9z2kCHEQ6BJf
         BeLeuAVnIA9SjlOUD0tIjznk5LNvhlg2p/LBi2ovcMZIyUwE2of8/Aj9rWXu+lRb5wJP
         /mNg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AFqh2kqV/12h0AqRC9DSKjqOpUXt3FuSe1M622IH2z4VCjIzVrNRStCO
	4vWIUG8SUV7oGCCh4/ijkYk=
X-Google-Smtp-Source: AMrXdXusplDpYsrMAZvdLHSY7v3waoAKo1e6q7Qpgo2rgGgjsQeAwK/IjcepY1GCXwgcFoAvexURxQ==
X-Received: by 2002:a92:d809:0:b0:30c:4a44:eeb5 with SMTP id y9-20020a92d809000000b0030c4a44eeb5mr6130055ilm.226.1673877845627;
        Mon, 16 Jan 2023 06:04:05 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6e02:e47:b0:30d:87b9:7b20 with SMTP id
 l7-20020a056e020e4700b0030d87b97b20ls3505010ilk.0.-pod-prod-gmail; Mon, 16
 Jan 2023 06:04:04 -0800 (PST)
X-Received: by 2002:a92:c605:0:b0:30d:b90d:c0cf with SMTP id p5-20020a92c605000000b0030db90dc0cfmr16875391ilm.29.1673877843992;
        Mon, 16 Jan 2023 06:04:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1673877843; cv=none;
        d=google.com; s=arc-20160816;
        b=ItNGgv/c1o9GQdWHHZ2CY+ZQgIi7mPzP1xmpGYMkHI6PkK7CHfLD4CpKPVp73cf57K
         MQTi40dQnBzTNpsM04CSUMC8sA7ms2ME0a/6xqVeYqqqU7upImCSyMzBhY1nHHbDLCfn
         tkxepxOU1TmbrTcx95vZkNbDu2xaMrJMgZwJJd2ubcGb84qw1T+dO4JQkQS2V+rGRvEm
         ROohoJ5tPZp/Nsb5eaOsvBmCt4Qk4YBUqgtwuHTX5Fc0cjxgc0gB4+U2w0ctBCzetI/F
         zoZeTKR7h4JtekhUKx65aYbym9Gegy7YcsJVXj2LWz6EWsiiYDnKrEQlSVheT5mu2lnt
         Dy4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=rmotUwVGxwXiymu+4n3ysELx62/oZjgNGBW4mrNixPo=;
        b=xLBAmU+gMpa5P92xHsbP8dzk5X3NRmu+KVl6JXTtlS5j8ZO/T9jqjX2X8jgNjpZGBc
         CuvC9QU0pcALLNj2kCmod1vNZgSX3P9eoWtosHs6dUXtTVHS9N5oo98ivb/GAh/eW3pH
         EXWn4tGYvZkhaAMdev4XHo5ctsG7JHHreaZkkZhAaD9n4IAPYM7rfJltE09QeebkxFPI
         /AqV7B9P5rkEF41y4gcLNxPPwvmn1gYIMye3StXpohLTVaf2q1ABOKtBvkQUiJcZWroF
         tCEyf5iLmx5QAQKZyS+nfkjfFmTsmF6qTiZpeZAkqjPWXOPsloHYh+wv+UMdn5K8Klta
         k2/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YPaPr4Sm;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id j13-20020a056e02220d00b00302df8abfa9si1932974ilf.1.2023.01.16.06.04.03
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Jan 2023 06:04:03 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id AA18C60FD4;
	Mon, 16 Jan 2023 14:04:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADEC5C433D2;
	Mon, 16 Jan 2023 14:04:01 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.15 01/24] scsi: iscsi: Fix multiple iSCSI session unbind events sent to userspace
Date: Mon, 16 Jan 2023 09:03:36 -0500
Message-Id: <20230116140359.115716-1-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=YPaPr4Sm;       spf=pass
 (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as
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
index cc39cbef9d7f..4d23e5af20d3 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1679,6 +1679,13 @@ static const char *iscsi_session_state_name(int state)
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
 	int err;
@@ -1807,9 +1814,13 @@ static int iscsi_user_scan_session(struct device *dev, void *data)
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
@@ -1998,31 +2009,41 @@ static void __iscsi_unbind_session(struct work_struct *work)
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
@@ -2091,6 +2112,9 @@ int iscsi_add_session(struct iscsi_cls_session *session, unsigned int target_id)
 		session->ida_used = true;
 	} else
 		session->target_id = target_id;
+	spin_lock_irqsave(&session->lock, flags);
+	session->target_state = ISCSI_SESSION_TARGET_ALLOCATED;
+	spin_unlock_irqrestore(&session->lock, flags);
 
 	dev_set_name(&session->dev, "session%u", session->sid);
 	err = device_add(&session->dev);
@@ -4391,6 +4415,19 @@ iscsi_session_attr(def_taskmgmt_tmo, ISCSI_PARAM_DEF_TASKMGMT_TMO, 0);
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
@@ -4493,6 +4530,7 @@ static struct attribute *iscsi_session_attrs[] = {
 	&dev_attr_sess_boot_target.attr,
 	&dev_attr_priv_sess_recovery_tmo.attr,
 	&dev_attr_priv_sess_state.attr,
+	&dev_attr_priv_sess_target_state.attr,
 	&dev_attr_priv_sess_creator.attr,
 	&dev_attr_sess_chap_out_idx.attr,
 	&dev_attr_sess_chap_in_idx.attr,
@@ -4606,6 +4644,8 @@ static umode_t iscsi_session_attr_is_visible(struct kobject *kobj,
 		return S_IRUGO | S_IWUSR;
 	else if (attr == &dev_attr_priv_sess_state.attr)
 		return S_IRUGO;
+	else if (attr == &dev_attr_priv_sess_target_state.attr)
+		return S_IRUGO;
 	else if (attr == &dev_attr_priv_sess_creator.attr)
 		return S_IRUGO;
 	else if (attr == &dev_attr_priv_sess_target_id.attr)
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index 0f2f149ad916..304ccf153928 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230116140359.115716-1-sashal%40kernel.org.
