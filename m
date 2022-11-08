Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBWHTUONQMGQEFH4B7FI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8D861F32C
	for <lists+open-iscsi@lfdr.de>; Mon,  7 Nov 2022 13:28:11 +0100 (CET)
Received: by mail-ua1-x940.google.com with SMTP id n14-20020a9f314e000000b004114b0c125fsf5069590uab.8
        for <lists+open-iscsi@lfdr.de>; Mon, 07 Nov 2022 04:28:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1667824090; cv=pass;
        d=google.com; s=arc-20160816;
        b=alquQlaRprxRI6H8a0BE71PJLpOBvgdR8IIWa4+gq9AB2mhMU9oXyvH/xBf9KVHtvj
         /TxNDmtH/m22VDsREMXpfVfB3YQGcCKvzmr4ymAMPOz1NoiLXKENZ8iE0PhEnEK+hapA
         pk5l5bRg0yJ+pX0XK0mmygmgRc8/UDx1aw2V3gm/tIdvZEZxVWCX4eCpYiMNRQrg4tfc
         SpqwKD0TDVJWxTb9sLRdyGV8G+a0Rf1FgXs/Lr+tmhCzrstQ/pGWtuxHJH59OY1Tf2vf
         USV/mZIl4L3ey7ZlcFiCx3M4Z4X18QyfcE2iAj5sPo0VrtAcJSmlnubkSOhYFTzzb0hk
         eMrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=TOvmowJdRHljQDwD5TElJ9ZHTGNar6YnF1UW5apZF/c=;
        b=xtB/qRKpyh4fP8V+fNXEDEhicwNuStWDLJ22cNH579/EOSE/+2xnLvuvNcWmfcn9oj
         vLHq3WLgf6p8n1ktIyJ2xX1+70RT6VL7FuwDM2h5HtYbHBfN3MSfpFWGRgpiLthPsQoa
         2Wn4tqjbCXP/KMo7ohA70xbSk3Xe75bAI9twzgqxkZQwG2uLBvVidZtUJjP2IYpPXtw+
         3eIxFpOTz9ekVdL+l5sFJuWyKB/hunxHCfKfSdVuDz9EVxrDOvjbJ9efHL9gc94FNidk
         jL2wfRxCwgJ5cKBu+qjBUBaZfxYspdWT0om1yJpMwK654QVyiL1DxCj2HaMx7iI1pS1a
         mP4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TOvmowJdRHljQDwD5TElJ9ZHTGNar6YnF1UW5apZF/c=;
        b=m3lTrnlopV07ZEhHayO73v84h15nyynfNw6QXeX8jkkBRh3H/Vb4h3+Q9+Vw8xVP7J
         yyJKapddsiPA3JpPBYOwZEWx9Q+3B9HHnuy5RTICCckbrnNnGMZQmwgdtvSXdiJae3db
         rHxh/EM8g3INY+KFEVuM+nQEE1LGfbV3ZSXObRVkHEEtpApTPK7NTkiHT9CQep4cf5xv
         G7527nceLPmICOL+68qFklF1NfEzT2pp5gmJwm1M+hZQ6n9BMN/Lq54+TVD3bSSWj4Ts
         yseiI4AHb8I7KIRmusJbHZjYhVWvyVuOAI1S6gThOlincrlaOMyWsnLt0IXyB184lFch
         ZJYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TOvmowJdRHljQDwD5TElJ9ZHTGNar6YnF1UW5apZF/c=;
        b=hAvN0n+LeeTvhFFi/TlLhMpoNxBKh5y6pwHcnjIcgWfUTbpTrYu6mgMyB4o6Onl/KT
         leFQUzXVVnzlCwkLmUjIKBsFZDDYt62XFQx2LrvfGRidMcIjBESwcU4C1FVG0t/TraTo
         gwQ+MQD/gRu1DMc7BPNunmjy0CM/0BdBucc5B5uMeD8oK3VMMX3gT59cClLAS4LHllAg
         9euiSzmOIPyjuLM5deqoXyMX4ESAzWCRRwXJmgTxO73hBhhEoJsk4iPirn9nEcPfeq7p
         DFVDlm8HIpHVLHIvA2cyr0UsjHdMENR9fs8HMUNwDwC6zF51mr0Wo3LW6d5n5Gdw71Ea
         ktDw==
X-Gm-Message-State: ACrzQf2bzqHw318v7gE0eBT+mcp5FBSxmlzLgjjIpS90BuwX98oYf8Or
	nLjUWlre5W5yTTeeYqoDJCk=
X-Google-Smtp-Source: AMsMyM5NnyRw+xNnlQhR9dgW4qFpDPV3ydEHV93xnvtxXAih54QrG+Br/Uf0ZMfTIjKSDxEx0rlf/Q==
X-Received: by 2002:a05:6122:4c:b0:3ab:42ba:252 with SMTP id q12-20020a056122004c00b003ab42ba0252mr7916696vkn.8.1667824090004;
        Mon, 07 Nov 2022 04:28:10 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1f:28d6:0:b0:3aa:886a:3a0 with SMTP id o205-20020a1f28d6000000b003aa886a03a0ls1515639vko.0.-pod-prod-gmail;
 Mon, 07 Nov 2022 04:28:08 -0800 (PST)
X-Received: by 2002:a1f:17ce:0:b0:3af:481e:5de6 with SMTP id 197-20020a1f17ce000000b003af481e5de6mr7935463vkx.27.1667824087960;
        Mon, 07 Nov 2022 04:28:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1667824087; cv=none;
        d=google.com; s=arc-20160816;
        b=PvdkEwSwtmfVfi5rP0TQ6QhfsuLvykAGz6udQ3UiCQrJldeH02udY1ridihF95/Z/k
         LUPpGcOPiTdJWnV6WFfMs6CjlTlkb7BtYfohQuOIQ9kPDXH1gxvqmows885BFzx3W7Fv
         Zw08Bbsifb+7+595tg+dBDPeVylJzPr+hQby2uU9hG4IQoAQFq+2QtMws364TQAiwK7f
         w2WZ3CWrfZR3oDSUX/Jslf0XS9l0I4icab9XJFznIehkvkRHP7ywkcgMT08N8bCKCCLR
         8m3CsQxrfPpbuDXXFhzD2fsygSBc5kf1XE87ZUkSUAYjlJQyfxlmRvO+rNNLxVnkW2Lr
         yvig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=/Dda5TItPkdew1Jisf1oscwssymV/4K2ffYzReZQUF8=;
        b=WGiqaQrJenqYrf005zAv9+LTvSU0bQNZUNoBkhxzUN9ySJ8nWcRbBgxuppjj+JDdW7
         24WbKgNgXMK0nGY0OlIdalKidOt7FFCUzISc6YQZ2osExHV4mPeSBjIsNxLJikq1RidE
         sh44/7lelWY8iBKzG2HKSh5vly7S4VjJ4ezktLFM/bR8Sm+OKd30b5fYhcJjE2ZUt2WT
         YtwA6XjvN42ZrzjS6/Qv/R7U/RpwdHqJaNG+Ocan1u+EB22bIbMifN9aXRzYQwPQGaVB
         Q92Sv4tYa9vQEaFAKycxPEf/k34vvtw3URg1yB/0kdR8ATxLAPVoIi+d6edv4Yojwp3g
         GvIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com. [45.249.212.189])
        by gmr-mx.google.com with ESMTPS id s184-20020a1f90c1000000b003b758af3b49si309038vkd.5.2022.11.07.04.28.07
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Nov 2022 04:28:07 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.189 as permitted sender) client-ip=45.249.212.189;
Received: from dggpemm500023.china.huawei.com (unknown [172.30.72.53])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4N5Vmc2drZzJnXD;
	Mon,  7 Nov 2022 20:25:04 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500023.china.huawei.com (7.185.36.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 7 Nov 2022 20:28:02 +0800
Received: from build.huawei.com (10.175.101.6) by
 dggpemm500017.china.huawei.com (7.185.36.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 7 Nov 2022 20:28:01 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "Mike
 Christie" <michael.christie@oracle.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, "James E . J . Bottomley" <jejb@linux.ibm.com>
CC: <open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linfeilong@huawei.com>, Wenchao Hao
	<haowenchao@huawei.com>
Subject: [PATCH v6] scsi:iscsi: Fix multiple iscsi session unbind event sent to userspace
Date: Mon, 7 Nov 2022 20:44:14 -0500
Message-ID: <20221108014414.3510940-1-haowenchao@huawei.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.189 as
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
 drivers/scsi/scsi_transport_iscsi.c | 57 ++++++++++++++++++++++++++++-
 include/scsi/scsi_transport_iscsi.h |  9 +++++
 2 files changed, 65 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index cd3db9684e52..4bbd1aa4a609 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1676,6 +1676,21 @@ static const char *iscsi_session_state_name(int state)
 	return name;
 }
 
+static char *iscsi_session_target_state_names[] = {
+	"UNBOUND",
+	"ALLOCATED",
+	"SCANNED",
+	"UNBINDING",
+};
+
+static const char *iscsi_session_target_state_name(int state)
+{
+	if (state > ISCSI_SESSION_TARGET_MAX)
+		return NULL;
+
+	return iscsi_session_target_state_names[state];
+}
+
 int iscsi_session_chkready(struct iscsi_cls_session *session)
 {
 	int err;
@@ -1785,9 +1800,13 @@ static int iscsi_user_scan_session(struct device *dev, void *data)
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
@@ -1961,6 +1980,21 @@ static void __iscsi_unbind_session(struct work_struct *work)
 	unsigned long flags;
 	unsigned int target_id;
 
+	spin_lock_irqsave(&session->lock, flags);
+	if (session->target_state == ISCSI_SESSION_TARGET_ALLOCATED) {
+		spin_unlock_irqrestore(&session->lock, flags);
+		if (session->ida_used)
+			ida_free(&iscsi_sess_ida, session->target_id);
+		ISCSI_DBG_TRANS_SESSION(session, "Donot unbind sesison: allocated\n");
+		goto unbind_session_exit;
+	}
+	if (session->target_state != ISCSI_SESSION_TARGET_SCANNED) {
+		spin_unlock_irqrestore(&session->lock, flags);
+		ISCSI_DBG_TRANS_SESSION(session, "Donot unbind sesison: unbinding or unbound\n");
+		return;
+	}
+	spin_unlock_irqrestore(&session->lock, flags);
+
 	ISCSI_DBG_TRANS_SESSION(session, "Unbinding session\n");
 
 	/* Prevent new scans and make sure scanning is not in progress */
@@ -1972,6 +2006,7 @@ static void __iscsi_unbind_session(struct work_struct *work)
 		goto unbind_session_exit;
 	}
 
+	session->target_state = ISCSI_SESSION_TARGET_UNBINDING;
 	target_id = session->target_id;
 	session->target_id = ISCSI_MAX_TARGET;
 	spin_unlock_irqrestore(&session->lock, flags);
@@ -1983,6 +2018,10 @@ static void __iscsi_unbind_session(struct work_struct *work)
 		ida_free(&iscsi_sess_ida, target_id);
 
 unbind_session_exit:
+	spin_lock_irqsave(&session->lock, flags);
+	session->target_state = ISCSI_SESSION_TARGET_UNBOUND;
+	spin_unlock_irqrestore(&session->lock, flags);
+
 	iscsi_session_event(session, ISCSI_KEVENT_UNBIND_SESSION);
 	ISCSI_DBG_TRANS_SESSION(session, "Completed target removal\n");
 }
@@ -2061,6 +2100,9 @@ int iscsi_add_session(struct iscsi_cls_session *session, unsigned int target_id)
 		session->ida_used = true;
 	} else
 		session->target_id = target_id;
+	spin_lock_irqsave(&session->lock, flags);
+	session->target_state = ISCSI_SESSION_TARGET_ALLOCATED;
+	spin_unlock_irqrestore(&session->lock, flags);
 
 	dev_set_name(&session->dev, "session%u", session->sid);
 	err = device_add(&session->dev);
@@ -4368,6 +4410,16 @@ iscsi_session_attr(def_taskmgmt_tmo, ISCSI_PARAM_DEF_TASKMGMT_TMO, 0);
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
@@ -4470,6 +4522,7 @@ static struct attribute *iscsi_session_attrs[] = {
 	&dev_attr_sess_boot_target.attr,
 	&dev_attr_priv_sess_recovery_tmo.attr,
 	&dev_attr_priv_sess_state.attr,
+	&dev_attr_priv_sess_target_state.attr,
 	&dev_attr_priv_sess_creator.attr,
 	&dev_attr_sess_chap_out_idx.attr,
 	&dev_attr_sess_chap_in_idx.attr,
@@ -4583,6 +4636,8 @@ static umode_t iscsi_session_attr_is_visible(struct kobject *kobj,
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
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20221108014414.3510940-1-haowenchao%40huawei.com.
