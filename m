Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBT7E56JAMGQEOYXROCA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CDA950479F
	for <lists+open-iscsi@lfdr.de>; Sun, 17 Apr 2022 12:56:17 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id r28-20020a0568301adc00b0060547f4fab0sf1009762otc.1
        for <lists+open-iscsi@lfdr.de>; Sun, 17 Apr 2022 03:56:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1650192976; cv=pass;
        d=google.com; s=arc-20160816;
        b=q3hwtaLhaJySfCH2NgDhU3+yHCUbPsWayZkH8uy4HqUZ7CWNM2dB9SyEeSFsRwu1dF
         1mlWvwRX6eGyONbzEDM+Bx9f8/qSbDXqKVDQvM0k90vuY5pBzT+ZIap1UWsx1KYt+XHm
         HvjzxLNQtqmRRi2kgY/lAifnMMsESTnxG1avy8ka9k8VKZqW1fI1DRtcszDiXGx+Lp9P
         71wn6J2DQWgyatWwdH+gWL1ddUFDeKod26znlKzkJ9SLJQjPi2/MfsNmXkMHN8iDnvMu
         fMUGFOibExAGTZa+Ey18AGMMCrE6H95Sjz5QKnZ+ZlbXU66/SEe32GVo6uLnevKAnDHB
         ClWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=AJreZKi2MpiBt3bjUDUHZrB+oIU/fOJdJrOIonxbg/s=;
        b=QNXTv9kfs/JByFOBm+g/6p89aCbJa71tK0wu2yQbfMz5QhXCyTCdVh32g++yBznmJM
         RxPX6pSamFvQXfMrxRpXk/Eh1VLDjWesQ/PZ66MvMKZsvi6qkl/1h/xMBGl9mxX4Jhcw
         HTKy9XNG/cRZFuUh+1THj/HJlSKD+62IbtvxC02Ouo2JQ/TkzFkFe3Sh5V2itzS3KR/d
         vu70HQpGavpPt8tnMCTmXCxbjuKgiWPK92D6pt8nD6QWpG7Hvyq+isak0pde3z9HVeH/
         EWcuTKTA8/nAgMVWIV3ny5H7VqaIkoQam8i+cT3wsmX78ry9XajHsNq7b3H6SNXV45RG
         cE9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=AJreZKi2MpiBt3bjUDUHZrB+oIU/fOJdJrOIonxbg/s=;
        b=StGIQHYjMJvtISRNHwS4qC36ebiGX3gjRmAnVLgZuOSqNf2udEz6KRIjUjluB9jiFY
         ++L6KyyFEM11Qfw7pbo9IfSriRBYsJUjY2VwLh5bd8vYvGHJMiCcdatP/30TtRg2zMuT
         Fs67U5oPfXn1PrfmJJ3DDEAsq/sVrBrHjpOkk2GMk6KTuIWZBNsacaJDmBJypKzg8g5k
         PNjv8PSIG6pbMdZSTYVzb2Ypxh6xx+6waKzdAbTKQMeGZ207qqZjHHGKFQB8DYBtV/Q7
         zgchs29JINCVnoX935qiaws8g6P/4qfxWXnPbchtZYzbCXjvnFwIAmkJ8nUWiyAHLtRF
         /hWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AJreZKi2MpiBt3bjUDUHZrB+oIU/fOJdJrOIonxbg/s=;
        b=GERbu5bs2osSEA3rZb1dLkG7rvLzn/nigRu2nGe5uQq7+NFObM9F+4CdWoc5k4/DUu
         EuqniRZZ2AJOvV5ZFD5jHB0Q0v88Ix5BL6HeHMlXTrSrnE9ON/ZSslLv6JjfXoJHZKoR
         sO8p4AaEReNpiwQFugjgl3XcvPawb5MD2+EQFGybGX+S1oLGqK11Cx1hGUJDkD5UjVJV
         zAW1uxWWbTjvtk5h73NsI3jzd8qHXexzS68kkg6UO1XISnSmgjk54o0vhfBU/f0mMYmJ
         xtOMz/GDyhtTO7rDAhK1SEgXB8Lmwf6LmQqUehPwhUY9R050/ktixGmfPO0834i9FE9k
         89Ow==
X-Gm-Message-State: AOAM530/LzS51hmvTLDzpIjezSCn7+1hpuhPaOZWosOfk3VABtvkPUWZ
	6ydkntn0uNNCJaQ2KwBOcnA=
X-Google-Smtp-Source: ABdhPJzVErqBApFPsxNLqu9PAV8cOTAikPDMwioAGUnwATrLOLhB8n4Bptjuk95V55+UD8S6BtqHTg==
X-Received: by 2002:a05:6808:1709:b0:2f9:30ec:c95b with SMTP id bc9-20020a056808170900b002f930ecc95bmr4804429oib.240.1650192975988;
        Sun, 17 Apr 2022 03:56:15 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:4f01:0:b0:605:47e6:6e31 with SMTP id d1-20020a9d4f01000000b0060547e66e31ls686849otl.6.gmail;
 Sun, 17 Apr 2022 03:56:14 -0700 (PDT)
X-Received: by 2002:a9d:6f13:0:b0:604:3bd1:851f with SMTP id n19-20020a9d6f13000000b006043bd1851fmr2197568otq.34.1650192974702;
        Sun, 17 Apr 2022 03:56:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1650192974; cv=none;
        d=google.com; s=arc-20160816;
        b=yXdqjsLUMMf9YBqh/6K25F401Jnxf7S/ZVad+rJvbPYIDvt9Nc3ONjcOq0OfVIr20e
         mOEgAmt4lJbfKBSVliZsdydtCmJ0/yLmIBNafwtOqb6XN7NSBlh07Ot9s0F/211Fo3ih
         usZkT2ucPzjlAqimLkUi7CV29fNRA5262ANyGwAYz32VH465EDe5u48/1WscL2azmrf2
         DxN2ZiFpYkROcsFMTFGbszqrMipj0Q5gKkoD9NUQoTmh2E6O+1NFduFgEo88IYGZ3s3g
         TJkALJg2YJJlFzz1WcWR3yHXI9Z6zOfS3u4dbneVbOOUkdCScPJnb0pI5Ht4vxJm5JWO
         wqMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=Gxr1PiDAxKmzlT9cRMNMwlv2B/5dV263mnJXiItn1Uc=;
        b=AxSfsEc0LYOWn/Pjic942ginFdE54teKLD+yPFkhkLBlP70KZP3mCtyDHLNeBnhLz4
         YfCJh+IbR8C/ROoctE6B0b2OEqLh1okRmwZJFiYFB0SqdnQ3KqpY9CwsyEtFENdOeI+m
         feZ/cm9MXcbbjMDQMLyvqhOA3KSuHTr0IV7e1AwEE6jM02Jt1bFFWuYXwwDTVIXCR5oi
         G9sVE5gcafteufAVlTYJHJ8jotP2ojQKYCTypPBsiahXq07cGiT3E95s8IuaPbm79NOO
         ZurCRVLIvj7805oCpX3aZosH9hM0StFfJiI5K9mOBqMrBja32siZ5r0OwN8tDJP+AZ5k
         m06Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id bf20-20020a056808191400b002ef895edb85si997910oib.2.2022.04.17.03.56.14
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Apr 2022 03:56:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggpemm500024.china.huawei.com (unknown [172.30.72.57])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4Kh6Nn1xYyzFpXF;
	Sun, 17 Apr 2022 18:53:13 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500024.china.huawei.com (7.185.36.203) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Sun, 17 Apr 2022 18:55:41 +0800
Received: from huawei.com (10.175.101.6) by dggpemm500017.china.huawei.com
 (7.185.36.178) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Sun, 17 Apr
 2022 18:55:40 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: Mike Christie <michael.christie@oracle.com>, Lee Duncan
	<lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E . J .
 Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: <linfeilong@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH v2] scsi: iscsi: Fix multiple iscsi session unbind event sent to userspace
Date: Sun, 17 Apr 2022 20:06:28 -0400
Message-ID: <20220418000627.474784-1-haowenchao@huawei.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
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

This patch introduce target_unbound in iscsi_cls_session to make
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

So we need to check session's target unbound state during iscsid restart,
if session is in unbound state, do not sync this session and perform
session teardown. It's reasonable because once a session is unbound, we
can not recover it any more(mainly because it's target id is INVALID)

Changes from V1:
- Using target_unbound rather than state to indicate session has been
  unbound

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 21 +++++++++++++++++++++
 include/scsi/scsi_transport_iscsi.h |  1 +
 2 files changed, 22 insertions(+)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 2c0dd64159b0..43ba31e595b4 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1958,6 +1958,14 @@ static void __iscsi_unbind_session(struct work_struct *work)
 
 	ISCSI_DBG_TRANS_SESSION(session, "Unbinding session\n");
 
+	spin_lock_irqsave(&session->lock, flags);
+	if (session->target_unbound) {
+		spin_unlock_irqrestore(&session->lock, flags);
+		return;
+	}
+	session->target_unbound = 1;
+	spin_unlock_irqrestore(&session->lock, flags);
+
 	/* Prevent new scans and make sure scanning is not in progress */
 	mutex_lock(&ihost->mutex);
 	spin_lock_irqsave(&session->lock, flags);
@@ -2058,6 +2066,7 @@ int iscsi_add_session(struct iscsi_cls_session *session, unsigned int target_id)
 		session->target_id = target_id;
 
 	dev_set_name(&session->dev, "session%u", session->sid);
+	session->target_unbound = 0;
 	err = device_add(&session->dev);
 	if (err) {
 		iscsi_cls_session_printk(KERN_ERR, session,
@@ -4319,6 +4328,15 @@ iscsi_session_attr(def_taskmgmt_tmo, ISCSI_PARAM_DEF_TASKMGMT_TMO, 0);
 iscsi_session_attr(discovery_parent_idx, ISCSI_PARAM_DISCOVERY_PARENT_IDX, 0);
 iscsi_session_attr(discovery_parent_type, ISCSI_PARAM_DISCOVERY_PARENT_TYPE, 0);
 
+static ssize_t
+show_priv_session_target_unbound(struct device *dev, struct device_attribute *attr,
+			char *buf)
+{
+	struct iscsi_cls_session *session = iscsi_dev_to_session(dev->parent);
+	return sysfs_emit(buf, "%d\n", session->target_unbound);
+}
+static ISCSI_CLASS_ATTR(priv_sess, target_unbound, S_IRUGO,
+			show_priv_session_target_unbound, NULL);
 static ssize_t
 show_priv_session_state(struct device *dev, struct device_attribute *attr,
 			char *buf)
@@ -4422,6 +4440,7 @@ static struct attribute *iscsi_session_attrs[] = {
 	&dev_attr_priv_sess_recovery_tmo.attr,
 	&dev_attr_priv_sess_state.attr,
 	&dev_attr_priv_sess_creator.attr,
+	&dev_attr_priv_sess_target_unbound.attr,
 	&dev_attr_sess_chap_out_idx.attr,
 	&dev_attr_sess_chap_in_idx.attr,
 	&dev_attr_priv_sess_target_id.attr,
@@ -4534,6 +4553,8 @@ static umode_t iscsi_session_attr_is_visible(struct kobject *kobj,
 		return S_IRUGO | S_IWUSR;
 	else if (attr == &dev_attr_priv_sess_state.attr)
 		return S_IRUGO;
+	else if (attr == &dev_attr_priv_sess_target_unbound.attr)
+		return S_IRUGO;
 	else if (attr == &dev_attr_priv_sess_creator.attr)
 		return S_IRUGO;
 	else if (attr == &dev_attr_priv_sess_target_id.attr)
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index 9acb8422f680..877632c25e56 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -256,6 +256,7 @@ struct iscsi_cls_session {
 	struct workqueue_struct *workq;
 
 	unsigned int target_id;
+	int target_unbound;   /* make sure unbind session only once */
 	bool ida_used;
 
 	/*
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220418000627.474784-1-haowenchao%40huawei.com.
