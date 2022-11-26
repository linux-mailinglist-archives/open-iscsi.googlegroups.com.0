Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBD6YQKOAMGQEYDOKD3Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BC6638912
	for <lists+open-iscsi@lfdr.de>; Fri, 25 Nov 2022 12:50:42 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id c23-20020a6b4e17000000b006db1063fc9asf1959197iob.14
        for <lists+open-iscsi@lfdr.de>; Fri, 25 Nov 2022 03:50:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669377040; cv=pass;
        d=google.com; s=arc-20160816;
        b=BpY9HOmX2nOgZemhPAAMsfN2E+RjciqGM+QZDs2pX2fgOldkE2X65rrl4pFkFm2pT4
         H+tCvRHeSZvhmmtClOdVEBAzee4wxKR2UCe0WUM5gtiLp0VWtV0WvLSunqqyKn/b//h4
         t7l5gt9Q5VOuyihvZN2a4FIbGrMzRsih9mPlLcZj7gXInnu1GlkA1uvnt5tZ7H8YSgws
         HggJOdgXIlTrZYpuxKMbtYwfL30k4ATi3CoChs3rXLC9V3WIzIbRupmhgbz964Np0UgE
         8suIBMjTWBjgApSUKYARTqG0/enr5g+S0cjbI+bRE4ZoD9pgi3LUUE5VrEAhI2xtY2UF
         otdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=8/MEJZcs7RbaeIfwfS7KpE5xuG3ryAPM/ylTjSyRugI=;
        b=lUH7lDHg8ypvLfmQZvb9bVOcq6aB0WMQcA7evVxMW9i+cqOzjzQq7khOAdiBZ+D/d7
         6JGPHXtKEz8StF3Vtbuzoi6RcCnWqr7uvleGdEtUSHScnE/4RjnM/S9GHGw9dQbBOkd5
         +2GDkg+c8kU3ZeqNQ+niGJehVvln/6fMnARdDRYgfPNqJjnxsIObUdHMDeAyZ9PzW7gS
         PaKv9tfA1youkfR000W8egYIGr9064XSE2XE1h6CIa3VnL6XBZhe9cXiUfhPjzfabC+D
         VTbR50BjJIr7BZlxZiM5OX63Hy6P+GCZU3kSIk8V6SnAUGUDznf9oQEJdExfWjMy+66M
         pXVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8/MEJZcs7RbaeIfwfS7KpE5xuG3ryAPM/ylTjSyRugI=;
        b=slGCGQ8V6k4DA9njNPaiufJRP1ASOrnx4RrHWSlcIYrYlcRLi6GEQXbEOBSn1qb+hn
         RXG0LhfwHAc2FbZjhuUsX/kiCTpuG0WqxRDgKidNWUbOR2Ip9U3zziM74Fq80yOQmAc/
         jhEUxjY4Vb6obwsFmTvdy0QBI78ZbkX6AsHTAFJSc4bBWej7TL2UUKJ+c1ef49k57HVa
         cJcOAhlkwH5VHCcuoU6t/JNaQ5ryVpEKJhXOxLELqXc9MhQkdTRB5eA0Xa92e3FMdy9F
         WQrB1/Qe20LNyF1aYVh7R0rGNi5/TU1Cm9/d0796Vcoz1PFK/0TK4Mq+WeFXSAZ5r4l4
         rXQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8/MEJZcs7RbaeIfwfS7KpE5xuG3ryAPM/ylTjSyRugI=;
        b=ju6A32R6E06W61kHpGKngxa03qzqN7CPBOvNJb9ejhns8IZ/bIm6dLpQX0kvz2K5gR
         V2v8cCVQpg5cNpSS+aR6Jgb8hikinByOz1tTcO/gecIKPa081FV0MTMIfymq9Ge8mCGd
         G7Uxp8Zs96YpJdlPrZDTMxhdrey0JtmMCcOMjEHyykc1d49iCmOC/kUA5ftsnqFxyPgB
         pEr2037it7DPzCBoQes55w+byBenTBb0AxlDmUpPyIJGa3SjQgu7nfRNvh2K1ARzllYy
         oyawYBWSjXCMmx4WbpDE8ulzRBjvi/py8n0JMAb/xzDuWhnv/HqCsPkMumCOj1Hrg6Vj
         +8Tw==
X-Gm-Message-State: ANoB5pkUswqEpRW9G6f33snASHS8QNFOfBq6FyxNSLhXTRnSasbiKAq6
	hy7sExDZyMv6e2xWsVnoFTs=
X-Google-Smtp-Source: AA0mqf6QAh1YKNMppMfetOaJpnqBivGT1Orr/D2kG9DC4otp6xvpOpItISW2SxraPvzsX9PUfZN4bw==
X-Received: by 2002:a05:6e02:106d:b0:302:a6df:80a with SMTP id q13-20020a056e02106d00b00302a6df080amr7399587ilj.197.1669377040456;
        Fri, 25 Nov 2022 03:50:40 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6602:24cc:b0:6b9:8f81:ab3b with SMTP id
 h12-20020a05660224cc00b006b98f81ab3bls387990ioe.7.-pod-prod-gmail; Fri, 25
 Nov 2022 03:50:39 -0800 (PST)
X-Received: by 2002:a05:6602:180b:b0:6de:ef1:845 with SMTP id t11-20020a056602180b00b006de0ef10845mr7174619ioh.98.1669377039141;
        Fri, 25 Nov 2022 03:50:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669377039; cv=none;
        d=google.com; s=arc-20160816;
        b=alvHcViWUilHLtO314xmCRVwqiXMM5WDx1L4sj8eamZfWn+XLHs6kvBhS8kI7l1Mwy
         c3cx52ZLPbe0zPARE1CgrxGbad6u4hMtUcx+2mT57ZrxSDmRX/z2/MB0qqGAX1a2WsL4
         WglbXgcsXDSx5AFv3/8Y7Wu4jufZRGFpp59LyITTI0p+j3xC5akmAiUvlHxT67Ww/PsH
         73eU5Kow385nzY5saAhrXl2YX7b4XUvnnDXLoclfkJ/nf3agexjnyy8oKTqffEHQfh8s
         HgeY3CEnCVbpHCpWoHolNvjT/gQRJCI6lTT4HvE4lRyicWIxAjmFmGS+gIdqZBPgG9pa
         VWGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=9X+5llySmLtkeSgIWDOqpnAuIPn4w0JYWjraxlPX33M=;
        b=jbbZsAjf8cPlG6NiT8h1fnWprFKLlDNd5d+l9K24gHLVe/J4mU8/vNZ0lMIJ11uZR2
         GSCot+RLXKY6+sYF/yKJqYr6iVKVKb0XkLmFdx/hPyRbHb4wKl7qMIVI5kuAngbZVUBh
         wOKOW4/FRBxRO8vLqmm0UNydL6jO19FDEd05e2mdhlsBAJ5rffFA39YBZ5ugriKA7w1D
         D5YnEZM93yAPF1v0ELEJs+WAk9Mb99kdvXNFIJgLXOFTAy8uTiHKgSYLtQ0iwUFlopre
         b/8yri7mPBZtt/WamNvMkfMaqkea1OtWTtUqn9HrE1ciu/nvvTkRPxL30uN8u0QrxCIe
         4gTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id w17-20020a92c891000000b00300c4b978d7si197644ilo.2.2022.11.25.03.50.38
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Nov 2022 03:50:38 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggpemm500023.china.huawei.com (unknown [172.30.72.53])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4NJY7B6WlMzHv3k;
	Fri, 25 Nov 2022 19:49:26 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500023.china.huawei.com (7.185.36.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 25 Nov 2022 19:50:05 +0800
Received: from build.huawei.com (10.175.101.6) by
 dggpemm500017.china.huawei.com (7.185.36.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 25 Nov 2022 19:50:04 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "Mike
 Christie" <michael.christie@oracle.com>, "James E . J . Bottomley"
	<jejb@linux.ibm.com>, "Martin K . Petersen" <martin.petersen@oracle.com>,
	<open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH v7] scsi:iscsi: Fix multiple iscsi session unbind event sent to userspace
Date: Sat, 26 Nov 2022 09:07:52 +0800
Message-ID: <20221126010752.231917-1-haowenchao@huawei.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as
 permitted sender) smtp.mailfrom=haowenchao@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Wenchao Hao <haowenchao@huawei.com>
Reply-To: open-iscsi@googlegroups.com
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

I found an issue that kernel would send ISCSI_KEVENT_UNBIND_SESSION
for multiple times which should be fixed.

This patch introduce target_state in iscsi_cls_session to make
sure session would send only one ISCSI_KEVENT_UNBIND_SESSION.

But this would break issue fixed in commit 13e60d3ba287 ("scsi: iscsi:
Report unbind session event when the target has been removed"). The issue
is iscsid died for any reason after it send unbind session to kernel, once
iscsid restart again, it loss kernel's ISCSI_KEVENT_UNBIND_SESSION event.

Now kernel think iscsi_cls_session has already sent an
ISCSI_KEVENT_UNBIND_SESSION event and would not send it any more. Which
would cause userspace unable to logout. Actually the session is in
invalid state(it's target_id is INVALID), iscsid should not sync this
session in it's restart.

So we need to check session's target state during iscsid restart,
if session is in unbound state, do not sync this session and perform
session teardown. It's reasonable because once a session is unbound, we
can not recover it any more(mainly because it's target id is INVALID)

V7:
- Define target state to string map and refer this map directly
- Cleanup __iscsi_unbind_session, drop check for session's
  target_id == ISCSI_MAX_TARGET since it can be handled by target_state

V6:
- Set target state to ALLOCATED in iscsi_add_session
- Rename state BOUND to SCANNED
- Make iscsi_session_target_state_name() more efficient

V5:
- Add ISCSI_SESSION_TARGET_ALLOCATED to indicate the session's
  target has been allocated but not scanned yet. We should
  sync this session and scan this session when iscsid restarted.

V4:
- Move debug print out of spinlock critical section

V3:
- Make target bind state to a state kind rather than a bool.

V2:
- Using target_unbound rather than state to indicate session has been
  unbound

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 47 ++++++++++++++++++++++++++---
 include/scsi/scsi_transport_iscsi.h |  9 ++++++
 2 files changed, 51 insertions(+), 5 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index cd3db9684e52..812578c20fe5 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1676,6 +1676,13 @@ static const char *iscsi_session_state_name(int state)
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
@@ -1785,9 +1792,13 @@ static int iscsi_user_scan_session(struct device *dev, void *data)
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
@@ -1960,31 +1971,41 @@ static void __iscsi_unbind_session(struct work_struct *work)
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
@@ -2061,6 +2082,9 @@ int iscsi_add_session(struct iscsi_cls_session *session, unsigned int target_id)
 		session->ida_used = true;
 	} else
 		session->target_id = target_id;
+	spin_lock_irqsave(&session->lock, flags);
+	session->target_state = ISCSI_SESSION_TARGET_ALLOCATED;
+	spin_unlock_irqrestore(&session->lock, flags);
 
 	dev_set_name(&session->dev, "session%u", session->sid);
 	err = device_add(&session->dev);
@@ -4368,6 +4392,16 @@ iscsi_session_attr(def_taskmgmt_tmo, ISCSI_PARAM_DEF_TASKMGMT_TMO, 0);
 iscsi_session_attr(discovery_parent_idx, ISCSI_PARAM_DISCOVERY_PARENT_IDX, 0);
 iscsi_session_attr(discovery_parent_type, ISCSI_PARAM_DISCOVERY_PARENT_TYPE, 0);
 
+static ssize_t
+show_priv_session_target_state(struct device *dev, struct device_attribute *attr,
+			char *buf)
+{
+	struct iscsi_cls_session *session = iscsi_dev_to_session(dev->parent);
+	return sysfs_emit(buf, "%s\n",
+			iscsi_session_target_state_name[session->target_state]);
+}
+static ISCSI_CLASS_ATTR(priv_sess, target_state, S_IRUGO,
+			show_priv_session_target_state, NULL);
 static ssize_t
 show_priv_session_state(struct device *dev, struct device_attribute *attr,
 			char *buf)
@@ -4470,6 +4504,7 @@ static struct attribute *iscsi_session_attrs[] = {
 	&dev_attr_sess_boot_target.attr,
 	&dev_attr_priv_sess_recovery_tmo.attr,
 	&dev_attr_priv_sess_state.attr,
+	&dev_attr_priv_sess_target_state.attr,
 	&dev_attr_priv_sess_creator.attr,
 	&dev_attr_sess_chap_out_idx.attr,
 	&dev_attr_sess_chap_in_idx.attr,
@@ -4583,6 +4618,8 @@ static umode_t iscsi_session_attr_is_visible(struct kobject *kobj,
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
2.35.3

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20221126010752.231917-1-haowenchao%40huawei.com.
