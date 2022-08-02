Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBW6IT6LQMGQEZCAMISQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id B43BA586CE7
	for <lists+open-iscsi@lfdr.de>; Mon,  1 Aug 2022 16:34:05 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id f4-20020a056830204400b0061c9d50ace0sf4857344otp.5
        for <lists+open-iscsi@lfdr.de>; Mon, 01 Aug 2022 07:34:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1659364444; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dx/Z9jfqeUdgJ40dZ2IQa0/uMvgQMqOmIi4Ei2tO4mV8ixEDgmRVbCcgY9vIXYl7P5
         grmn+VWIR+G+12TlJLNGQsBVXbK+FAgnC29QeJsuZzuA3GW6WfSM5CC1Ju41zzrE6lUf
         YaWM5BXENWdfO5a5L0oeXzuG1tFfc0wqBvbSI0ieKkRSa85K+8ecEGIRcN9AETwMiFYr
         crUOOtewCeM9rwh5TLzAKIhmqeS0lik5rxF+JirumKnBT22urxWJK+2nuybU9WKowAth
         Bo6wYEuHttVX2LoqfXd0wwNnkFoSqkGspIfoWn9pHTjP4LNZ5fKGGGChr+nXOmLG4ynr
         nbeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=EKkyodba6ZQwNZr+bw741Inp5yu6cofkQqaqycgsILQ=;
        b=AzxsVIZiDNCry4qsKMx3fy9ZVGJgoXdp2rd70YK9AYHiET5fDiGHV2TPYOwRvFcvqN
         +ltdVErQCxR1BRIlrhsi8bQBXD3pfM2GXhLIQYg9XuRbcY0dI9VAfqJ1bBIwP4MuEaf6
         lZ1CQ1IAxaFTH/Sbfpa013wh1vmQjROnTW6iuo+SF28/9rI0JKMZ2MadI9Zx4v7oRT2t
         fTp8l6f2LdrjPvc/wHHak04G95r2kwyxfkzkBOwYmc/IKUPOrM2bDflC0sY3qJas/CkD
         yLucu3hWucbPUDGE3TSAYcQK16G0rTY1TPDXTrMK6ZnG/nEwu17x8044Rq8JbFjqd3Mj
         xW2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=EKkyodba6ZQwNZr+bw741Inp5yu6cofkQqaqycgsILQ=;
        b=IumkwVa1szdA8m+UuCrtwyrtNKxbphhHSAXkcmQg6DpJcySgbj479C58LzP1N1JY+S
         ygJo2xPnWc5ERv9HmkicXCqA1aBmOQsqOxtFSdnFzm376YnUlk1c/Xhu5RfagX1mcH2a
         cHnGo6xTgubfm3/j+pGmR8Qs6dw3iT8bFDXvVTvT9810SxNm9G/Meh93OaaEnqNQcySF
         OiZAVffgSVFqO42N8fUIivAWCAKU1NPz1D7a4ZC7nnJa5CHlgtKbL0M0JjGi7NHXgsaY
         5vP9AOO2YYV4+OF0yjpUD8MFexd9o5weQf1ftO5BMHtgS39u62mHG4RBfOekVhU639mo
         k+KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=EKkyodba6ZQwNZr+bw741Inp5yu6cofkQqaqycgsILQ=;
        b=43AkeOdge9j576I8NPhTnKgRITwZlBcQ/M7sBRMzws3AmwO0N6sBdc/rKulvBCutZ7
         +wlxdIp6Zyvk2l9mXreB7hCoskI0GwlNfg7N57QrFpt+paVa6emaon/haSVHHN0vG/IN
         V1W9Lk76gc3/iafklAMdf4wy/PfpC4Cjdu4Y1ZjRmzg+yB24EC7bTdE5ye3MO4QbkRZH
         Mv7iiZY8y9yTTHVSsqaS5ETG4XyIBplohG1VK8RojkGU49LgsLVVqonXmuvzykUP+jps
         0EVbXMffrhcBP35y6MwKN+uu2WT805kH90bnvvaFDe6uUSZUuhX85X7e6Z3Vr8vgRiR8
         zBxg==
X-Gm-Message-State: AJIora8MYPtz1+YsY/aHMvjXjvnkwvmyztVDyPM/A9+XRF6ERVU6Dubt
	qT83OmmmCP8vV3AX2HKqfhU=
X-Google-Smtp-Source: AGRyM1sUsWkKpb6D0QVAL2WvhtLBzUjsE223D6zGgc08dgw0C+7sJE1YMfZtUuBXV1FTK4+LWRJ6IA==
X-Received: by 2002:a05:6830:25c3:b0:61c:bf4f:1807 with SMTP id d3-20020a05683025c300b0061cbf4f1807mr5763126otu.354.1659364444399;
        Mon, 01 Aug 2022 07:34:04 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:60d:0:b0:61c:e180:124e with SMTP id 13-20020a9d060d000000b0061ce180124els2120996otn.7.-pod-prod-gmail;
 Mon, 01 Aug 2022 07:34:02 -0700 (PDT)
X-Received: by 2002:a05:6830:16d8:b0:61c:9166:5b3f with SMTP id l24-20020a05683016d800b0061c91665b3fmr5863576otr.121.1659364442789;
        Mon, 01 Aug 2022 07:34:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1659364442; cv=none;
        d=google.com; s=arc-20160816;
        b=MkGnKDdmlbp/iW7QKxxG9toKmWWGEQsVHR7Rqd3UU6s51C82HmCVy8RdwSg+KouIR/
         pxbwi9zb4PaUu0dIO/l63Fe98dCshpUF6NGCoc5z+V6sUD+L2SQ9D0VgWTkLSVQrPn82
         +p71pv3u/8v5UTKS33Nn2nE0otxntgkesvNFeYQHzzG9V0rT4pCfkOkE+WEnBSXTsS2R
         YWP6USaNxjt++ZVni/VL5/Ttpjr44Vut3kCTnm9amEkfcWRlhFGu2nfolOlNLkRT6HNf
         luwfdC53XjEOMLTDcIN7m+39Uo5aJKSZM/H08OziAv4FwoL1865oVaYlj2wVaWdtwI/r
         gKUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=3WuhY3uheUDykgMB+7Jrhd2H9wccKPRxOfJxfZRJYPo=;
        b=nslK7a7zF8wjVC/tpEUwziPTgHVDWd3jw6Mv0d0rT8jZgpeUBJaaHPlEyhCGRYQI/d
         qx3MnJJnjv3xi2aDvwVixMggjDIiyJCsqvsWRHr86rEWfX1ik3XYsAcoY3SJwZoa3wMy
         h9DXt2DrAF4Mh06DMBBbiKpdVPXGsLfGjt+RNHzzQCGIjJ3i5yCSGSLhnZP6mtLQfg5v
         UR/ZD8IGyzCaVw4ivCG9IWud4C4PAYlOIgWvvxzJOdmg0/sU0fIZzlHfbeUo6KVtTTN1
         sXBZNfvAiHlqlwSYq0X8WKTvDB0CKJzF9XiBkL1Kd4NEmFXPAKgYvA+yT32o6BDa6vbH
         5v+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com. [45.249.212.255])
        by gmr-mx.google.com with ESMTPS id q19-20020a056830233300b0061c67f83202si456149otg.3.2022.08.01.07.34.02
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Aug 2022 07:34:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.255 as permitted sender) client-ip=45.249.212.255;
Received: from dggpemm500022.china.huawei.com (unknown [172.30.72.53])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4LxLC81nkwz1M8Sh;
	Mon,  1 Aug 2022 22:31:00 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500022.china.huawei.com (7.185.36.162) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Mon, 1 Aug 2022 22:34:00 +0800
Received: from huawei.com (10.175.101.6) by dggpemm500017.china.huawei.com
 (7.185.36.178) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Mon, 1 Aug
 2022 22:33:59 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "Mike
 Christie" <michael.christie@oracle.com>, "James E . J . Bottomley"
	<jejb@linux.ibm.com>, "Martin K . Petersen" <martin.petersen@oracle.com>,
	<open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
CC: Wenchao Hao <haowenchao@huawei.com>, <linfeilong@huawei.com>
Subject: [PATCH v3] scsi: iscsi: Fix multiple iscsi session unbind event sent to userspace
Date: Mon, 1 Aug 2022 23:47:29 -0400
Message-ID: <20220802034729.2566787-1-haowenchao@huawei.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.255 as
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

Changes from V2:
- Make target bind state to a state kind rather than a bool.

Changes from V1:
- Using target_unbound rather than state to indicate session has been
  unbound

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 49 +++++++++++++++++++++++++++++
 include/scsi/scsi_transport_iscsi.h |  7 +++++
 2 files changed, 56 insertions(+)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 5d21f07456c6..43d48ddfea07 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1676,6 +1676,29 @@ static const char *iscsi_session_state_name(int state)
 	return name;
 }
 
+static struct {
+	int value;
+	char *name;
+} iscsi_session_target_state_names[] = {
+	{ ISCSI_SESSION_TARGET_UNBOUND,		"UNBOUND" },
+	{ ISCSI_SESSION_TARGET_BOUND,		"BOUND" },
+	{ ISCSI_SESSION_TARGET_UNBINDING,	"UNBINDING" },
+};
+
+static const char *iscsi_session_target_state_name(int state)
+{
+	int i;
+	char *name = NULL;
+
+	for (i = 0; i < ARRAY_SIZE(iscsi_session_target_state_names); i++) {
+		if (iscsi_session_target_state_names[i].value == state) {
+			name = iscsi_session_target_state_names[i].name;
+			break;
+		}
+	}
+	return name;
+}
+
 int iscsi_session_chkready(struct iscsi_cls_session *session)
 {
 	int err;
@@ -1899,6 +1922,7 @@ static void __iscsi_unblock_session(struct work_struct *work)
 	cancel_delayed_work_sync(&session->recovery_work);
 	spin_lock_irqsave(&session->lock, flags);
 	session->state = ISCSI_SESSION_LOGGED_IN;
+	session->target_state = ISCSI_SESSION_TARGET_BOUND;
 	spin_unlock_irqrestore(&session->lock, flags);
 	/* start IO */
 	scsi_target_unblock(&session->dev, SDEV_RUNNING);
@@ -1961,6 +1985,15 @@ static void __iscsi_unbind_session(struct work_struct *work)
 	unsigned long flags;
 	unsigned int target_id;
 
+	spin_lock_irqsave(&session->lock, flags);
+	if (session->target_state != ISCSI_SESSION_TARGET_BOUND) {
+		ISCSI_DBG_TRANS_SESSION(session, "Abort unbind sesison\n");
+		spin_unlock_irqrestore(&session->lock, flags);
+		return;
+	}
+	session->target_state = ISCSI_SESSION_TARGET_UNBINDING;
+	spin_unlock_irqrestore(&session->lock, flags);
+
 	ISCSI_DBG_TRANS_SESSION(session, "Unbinding session\n");
 
 	/* Prevent new scans and make sure scanning is not in progress */
@@ -1984,6 +2017,9 @@ static void __iscsi_unbind_session(struct work_struct *work)
 
 unbind_session_exit:
 	iscsi_session_event(session, ISCSI_KEVENT_UNBIND_SESSION);
+	spin_lock_irqsave(&session->lock, flags);
+	session->target_state = ISCSI_SESSION_TARGET_UNBOUND;
+	spin_unlock_irqrestore(&session->lock, flags);
 	ISCSI_DBG_TRANS_SESSION(session, "Completed target removal\n");
 }
 
@@ -4324,6 +4360,16 @@ iscsi_session_attr(def_taskmgmt_tmo, ISCSI_PARAM_DEF_TASKMGMT_TMO, 0);
 iscsi_session_attr(discovery_parent_idx, ISCSI_PARAM_DISCOVERY_PARENT_IDX, 0);
 iscsi_session_attr(discovery_parent_type, ISCSI_PARAM_DISCOVERY_PARENT_TYPE, 0);
 
+static ssize_t
+show_priv_session_target_state(struct device *dev, struct device_attribute *attr,
+			char *buf)
+{
+	struct iscsi_cls_session *session = iscsi_dev_to_session(dev->parent);
+	return sysfs_emit(buf, "%s\n",
+			iscsi_session_target_state_name(session->target_state));
+}
+static ISCSI_CLASS_ATTR(priv_sess, target_state, S_IRUGO,
+			show_priv_session_target_state, NULL);
 static ssize_t
 show_priv_session_state(struct device *dev, struct device_attribute *attr,
 			char *buf)
@@ -4426,6 +4472,7 @@ static struct attribute *iscsi_session_attrs[] = {
 	&dev_attr_sess_boot_target.attr,
 	&dev_attr_priv_sess_recovery_tmo.attr,
 	&dev_attr_priv_sess_state.attr,
+	&dev_attr_priv_sess_target_state.attr,
 	&dev_attr_priv_sess_creator.attr,
 	&dev_attr_sess_chap_out_idx.attr,
 	&dev_attr_sess_chap_in_idx.attr,
@@ -4539,6 +4586,8 @@ static umode_t iscsi_session_attr_is_visible(struct kobject *kobj,
 		return S_IRUGO | S_IWUSR;
 	else if (attr == &dev_attr_priv_sess_state.attr)
 		return S_IRUGO;
+	else if (attr == &dev_attr_priv_sess_target_state.attr)
+		return S_IRUGO;
 	else if (attr == &dev_attr_priv_sess_creator.attr)
 		return S_IRUGO;
 	else if (attr == &dev_attr_priv_sess_target_id.attr)
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index 9acb8422f680..377b039eefdd 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -236,6 +236,12 @@ enum {
 	ISCSI_SESSION_FREE,
 };
 
+enum {
+	ISCSI_SESSION_TARGET_UNBOUND,
+	ISCSI_SESSION_TARGET_BOUND,
+	ISCSI_SESSION_TARGET_UNBINDING,
+};
+
 #define ISCSI_MAX_TARGET -1
 
 struct iscsi_cls_session {
@@ -264,6 +270,7 @@ struct iscsi_cls_session {
 	 */
 	pid_t creator;
 	int state;
+	int target_state;			/* session target bind state */
 	int sid;				/* session id */
 	void *dd_data;				/* LLD private data */
 	struct device dev;	/* sysfs transport/container device */
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220802034729.2566787-1-haowenchao%40huawei.com.
