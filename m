Return-Path: <open-iscsi+bncBDTZTRGMXIFBBVVRSWPAMGQEWZWDZAQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id ABDDD66C084
	for <lists+open-iscsi@lfdr.de>; Mon, 16 Jan 2023 15:02:01 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id i135-20020a25d18d000000b007e64108adb4sf2002805ybg.0
        for <lists+open-iscsi@lfdr.de>; Mon, 16 Jan 2023 06:02:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1673877720; cv=pass;
        d=google.com; s=arc-20160816;
        b=gnbeqGytMRnzLPpeSDDhYetpYuh8Nv/fkX/OjIoMyKFAEXMaV1LupgkkJ1N6PpJa5n
         OJ7QMYpQjx6g22ipAZn40lSB43X00nZ0AH0sJ2S0YC7rvwTX4SmB7TglNeC3K+twz6Mu
         fGLRHbjHOK3fF1Yod4sP9/NeYOJ70yk/5lDxHNAfV5rgkglnlHMe+c0bpjjYAQhrweNN
         UPmcWI0bNlrzpPpu3uLENLhYzRHIOfvT0ztdH6gyuFqYFizVeI8nn03TuMP2/vFdb4lx
         BvA6liV9tFgwlPqBsqeZO0JJhzKNj2+cGMPReC+X6Jcw6Gsg7FlVCHqmcBZOV/G15xls
         TBYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=SJ/V4y0B8xJNExHCfeXy+ttRPDzBhVLGigCFW653FCA=;
        b=Z0bT6Kq2f7AtafI94N8211i3Q9gHJt5efrBo9vtr0TdO/aj2hANbDmgzApDKdYhtOA
         e4z1FXOSAy9zBYA47AHawEUPUymsE7PfcrOCCXfge5txVOLyBzCOv3tzNnklu9gKWGfi
         BrPhZJYyKanFsaCc9IO0QFWf16saNTxoTci64BezkstxxHjSHf6bRwQ3unWEVEeburEV
         A26Xqmz6Xa6FqAaGFHM333N6pFYKamgxzl7/XxD0nVoEE5RVeAhv1DOvzIdA4uaddUcQ
         AQf2nSlcVSRiWjqWbFAI+WAIyoTSI2EvlF4V/LEid/+cLzNQo8PnfmtnR0+RAbdTLYQE
         V0BQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cUAfqa6P;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SJ/V4y0B8xJNExHCfeXy+ttRPDzBhVLGigCFW653FCA=;
        b=ZWdJuk9CBoU0H/S1R8Rje0Syo9LCmKo1VW2ob5y7cpDTtIGFIaV5Db/MiG8OrlJVT2
         +WPwGdQ34hSzu3tah05g2knuTEedADAiZTX/Vux0OsG6dN1j1arQ30iHXCZS0Od2sjHf
         xY4bGXhEmOVfh+u9nvHt5CKhlXkFFAqoze6rHj+ZNSXxGEl3O+CZmsoeUrCiesN38IrW
         HLVmzjVKqrmwXG/b7BtCgG/G0a+KUJKzrkbpy52XZYnFvXkMNgMdE6+WGdfUGxp7Jq+/
         uWe5Ki9nLOqWtLX8guPWLACauXV6v1mUBTsMv9iISpl2CDuY43lihIDQ6TA8qVMgQwKe
         VF3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SJ/V4y0B8xJNExHCfeXy+ttRPDzBhVLGigCFW653FCA=;
        b=Ncb3/HEYcbOqblvACoF6MQpg44AZyf/EnqxXWVNbm07Y2QE5TcFPf3VECtfHMCMmE6
         81QJyQ2wTCa+rMcO3wFLrX6CsiSghS09Yih4mF3vBcaxPRSsIc+3wYcZKJe8XDL8TJas
         vE2iVKKtPu/3jOfNJtLFq5SAnbZXsmB9GGBWnxIothlIJLBeGS8roEhmTEs4ZidzVRHf
         fa/9kmZ8RGb9QrrHaGUoYUunIrlqXXHyq0m217U47m8MMZF2w3URu9nTlYhnbSDssn+g
         scXxsYjHD2TnqzU7oiUYsk6Ufdcs+7y4gNkV446HdqoNSEGLDF/O2jI0LmsKJrStkeqC
         QT7A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AFqh2kpLMrAHmQ38JuAyQZT4STA2fxuSEym1Mc/oMRguS6ggzEWewMJQ
	F27TPYpciGfOXlx1jJ79SUk=
X-Google-Smtp-Source: AMrXdXvPp9DRhmmzsTxJfqBKP01dgrpR6MaltFIjTqWqeeINk+pV2vA2LlJ300Jo6PcjlJ++mejlQQ==
X-Received: by 2002:a81:a53:0:b0:3b9:3977:596c with SMTP id 80-20020a810a53000000b003b93977596cmr5137847ywk.271.1673877720243;
        Mon, 16 Jan 2023 06:02:00 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:b221:0:b0:7d4:b2ed:7659 with SMTP id i33-20020a25b221000000b007d4b2ed7659ls2962534ybj.8.-pod-prod-gmail;
 Mon, 16 Jan 2023 06:01:58 -0800 (PST)
X-Received: by 2002:a25:c6d0:0:b0:7ca:2202:188b with SMTP id k199-20020a25c6d0000000b007ca2202188bmr12659618ybf.42.1673877718277;
        Mon, 16 Jan 2023 06:01:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1673877718; cv=none;
        d=google.com; s=arc-20160816;
        b=UT/FgAJAweFQEozSZtdCRxc8MxvGPk9aJhUDJlpU2EKEDXF5vo4sux7SxSAxHLZ5WH
         MwZX5BPZ5JMw8rD3rFXpEOa0mlfi8AJZe32bI7zqVlZgzKWLEXHmPjJbv5KmhCBn9aj8
         yPaalR8WMp3cx8emCOZxTfk78+Pguc0KJFyGyrmu6izkdBK+gTUGryItg8KfiQbqspQu
         HvO8yVk9IuKRUUMREcvrHe98ntQ3GMjjuM75ur0caeKoUeQ4n3ljQHNqsYTqUUBSUizp
         3XuY9Nw4TluZY8SUOF0vC3ndSQUFXC/4o55xMfHS/XJQphiAXtofp9tLuawqpaqgLWP/
         d7mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Y1ICI0cX4UryjiI4VM34MSjtv3HX+yScgcf8pdRrn1I=;
        b=wNn3d6xkNLyKdI/sf9tzD30Mqm28+sruea5N74893ZMzey0Zcjmzcpi/+omq1WdtRm
         gm1rUbIhv99NKgGSBd8d2VH5U+HFyK3WMvlQvpBnYm0b3YZde6lRrTEo9IKcNGTdZvhc
         RCjyhRVecvJrNRfu7kIVh+k0J4erHDkR5LDDPyI74JNdONMT/ukHrZ46YBCdvwClUZ1n
         MAr3HOEdhqHCaqHGpEBg5a0T3xAbDlAp+me83fNkRUhwYvHLrTjYYG+YQyePP6sMBOcb
         5z2WNNxTwMdxWIDWFgApRFfhFWbX4RglkcuGAbC288P71ofkD8FCZaGRng4/eFtJSC9A
         b+9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cUAfqa6P;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id p78-20020a257451000000b007dea084c723si371802ybc.4.2023.01.16.06.01.58
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Jan 2023 06:01:58 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D4B3F60FB2;
	Mon, 16 Jan 2023 14:01:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03537C433EF;
	Mon, 16 Jan 2023 14:01:55 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 6.1 01/53] scsi: iscsi: Fix multiple iSCSI session unbind events sent to userspace
Date: Mon, 16 Jan 2023 09:01:01 -0500
Message-Id: <20230116140154.114951-1-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=cUAfqa6P;       spf=pass
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
index f473c002fa4d..bf834e72595a 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1677,6 +1677,13 @@ static const char *iscsi_session_state_name(int state)
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
@@ -1786,9 +1793,13 @@ static int iscsi_user_scan_session(struct device *dev, void *data)
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
@@ -1961,31 +1972,41 @@ static void __iscsi_unbind_session(struct work_struct *work)
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
 		ida_free(&iscsi_sess_ida, target_id);
 
-unbind_session_exit:
 	iscsi_session_event(session, ISCSI_KEVENT_UNBIND_SESSION);
 	ISCSI_DBG_TRANS_SESSION(session, "Completed target removal\n");
+
+	spin_lock_irqsave(&session->lock, flags);
+	session->target_state = ISCSI_SESSION_TARGET_UNBOUND;
+	spin_unlock_irqrestore(&session->lock, flags);
 }
 
 static void __iscsi_destroy_session(struct work_struct *work)
@@ -2062,6 +2083,9 @@ int iscsi_add_session(struct iscsi_cls_session *session, unsigned int target_id)
 		session->ida_used = true;
 	} else
 		session->target_id = target_id;
+	spin_lock_irqsave(&session->lock, flags);
+	session->target_state = ISCSI_SESSION_TARGET_ALLOCATED;
+	spin_unlock_irqrestore(&session->lock, flags);
 
 	dev_set_name(&session->dev, "session%u", session->sid);
 	err = device_add(&session->dev);
@@ -4369,6 +4393,19 @@ iscsi_session_attr(def_taskmgmt_tmo, ISCSI_PARAM_DEF_TASKMGMT_TMO, 0);
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
@@ -4471,6 +4508,7 @@ static struct attribute *iscsi_session_attrs[] = {
 	&dev_attr_sess_boot_target.attr,
 	&dev_attr_priv_sess_recovery_tmo.attr,
 	&dev_attr_priv_sess_state.attr,
+	&dev_attr_priv_sess_target_state.attr,
 	&dev_attr_priv_sess_creator.attr,
 	&dev_attr_sess_chap_out_idx.attr,
 	&dev_attr_sess_chap_in_idx.attr,
@@ -4584,6 +4622,8 @@ static umode_t iscsi_session_attr_is_visible(struct kobject *kobj,
 		return S_IRUGO | S_IWUSR;
 	else if (attr == &dev_attr_priv_sess_state.attr)
 		return S_IRUGO;
+	else if (attr == &dev_attr_priv_sess_target_state.attr)
+		return S_IRUGO;
 	else if (attr == &dev_attr_priv_sess_creator.attr)
 		return S_IRUGO;
 	else if (attr == &dev_attr_priv_sess_target_id.attr)
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index cab52b0f11d0..34c03707fb6e 100644
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
@@ -264,6 +272,7 @@ struct iscsi_cls_session {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230116140154.114951-1-sashal%40kernel.org.
