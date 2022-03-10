Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBEWEUKIQMGQENJYLGEA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4274D2F60
	for <lists+open-iscsi@lfdr.de>; Wed,  9 Mar 2022 13:48:20 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id f196-20020a4a58cd000000b00320d961e391sf1713825oob.7
        for <lists+open-iscsi@lfdr.de>; Wed, 09 Mar 2022 04:48:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646830099; cv=pass;
        d=google.com; s=arc-20160816;
        b=k52/zYmLFgiwFJD5w8OhS8AUV29x8a7JJ1uAnKAfjmeHikuBhbPHdyJfhn+AobXMk4
         Y9PiXjG1I3lslPqTRtIf9yqvUvU9LRwwZoXt2BQ/vCMAd90gw0MQQPOgMGjMrWIWeC8N
         uVDwewKHSmCbK9fLlrYtQEsevRWxtYrIoZVk+Lnz0bo2I5H816Bh/4Lmvn/hddtHuOAj
         ZjvNZGvq9xkZW0ZkpJm0n9kF8Q8scTaR00ja/7/wW15UbRH1xiDvJq1UYTdRQf2qq4dr
         h4Ism/QtvL6QKHMMR6yG6QgVozK6dcEY3NnNOmeSyn10algT+W4ObewwphMoyuUBQEWI
         7wbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=yCHA9YBM8/AHjsh7SFaaLg/zSi1f74GcER/flcIcLrc=;
        b=BJxR143c1QhjeWCg/9keUZvlWRJED/2DD2jh5RZK8fMQdFD5uBoUlFNqci5gbxCG33
         1JgEoRLpPV8a5zhxaLDYxWegNhAACB7Bh/HM2NNJGlgrc7AQPia7rPXLEng1HLRDNvSC
         wiRqn5C7PcS5R2ExUP6AG07LSqFe3CvutZoO5Xogq3516maCdJZybhJ4zpB1AeACAQUj
         QtCDpPpLj9GCbzAZ9o5bIKaRcEn/Kptwfwmobh45fXUsSncUyksn5PMU5+yxGNZZ77Dz
         ASnh9Dq5UL9T6RMJtTgq+q88RPoqVZZGAZcHg4fR1/UPuWofFgCgH7FC72YYyGJzpdsS
         yixg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yCHA9YBM8/AHjsh7SFaaLg/zSi1f74GcER/flcIcLrc=;
        b=oyym+bGpbZPD/WNhcesqevDbGr0KAoNV12A8fdS5aapgXE0Fb1W+zVR39qMWJowfJr
         2MtBHKLfmhzfzD/xH1vSG71ATgQCYPc69CL0tcg4ImFR1LOus+9tRd3anGlo4Lf+8Fkx
         SqhQVNdHzVy0/jOVE+ah6GRFQ1IvxKITV2UR9VzTxydef2yTEmKYUVBMlkcVcdBXXJs+
         cZINOyiQPc6r1zsSbKmu26584IYOiXH/Sin3GrhlPxClUsFwdyoqaAj9V46AW6byCwUk
         JIDriEtarpjEuWS28wE4mbjEyWh1J9ao1KiozFj9E/D/HsGdLUIzOS2Qxb6Tt0HQN9zT
         aR5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yCHA9YBM8/AHjsh7SFaaLg/zSi1f74GcER/flcIcLrc=;
        b=iqba0ICRJEXGZ/Nvbpwj7s1dHNelRIcJ8xwbNHNivuZn2QsOc10IHV4+EWkU5OWdkx
         mAoExtEULRIlyWrSKbbMFexE9P7uHE5bEspg1BcdE7Tn4JSksay+v1hDrK5nL7je2ckI
         mfs9lzAt5qxFTFdXdGFo9MXwEjfz13shza+yIhplm53CaXB5ODwStJ9ko50I7rCDdgYm
         4OMqTkBKl2iKu6qn2eANRD4AWefYIpq7ISGPzX+HEqd2SVc9PlTea1SJ06cjKhMlWM52
         ig30fBZogOnUqotwOTvxiLmyBfXmMV6bW5pLwg0Jcmh6iGY1sbHYL6MEVDGUzW9DLiun
         LiuA==
X-Gm-Message-State: AOAM53363xGe6pGHQQuK2LXs1RFqTBRrdzmjkFq+5X1+32eICvILc9RX
	CUvYJWi2BL9tWmDmowVBUbg=
X-Google-Smtp-Source: ABdhPJzb9/5OyEjRuipHs/zcwbE3/wpWdINT1ODnKi0zrgqC7lUoGJlu05zYLqy215HlMo3cUqcSGw==
X-Received: by 2002:a05:6870:3112:b0:ce:c0c9:62b with SMTP id v18-20020a056870311200b000cec0c9062bmr5201752oaa.125.1646830099455;
        Wed, 09 Mar 2022 04:48:19 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6808:220e:b0:2da:b59:3ac1 with SMTP id
 bd14-20020a056808220e00b002da0b593ac1ls828644oib.5.gmail; Wed, 09 Mar 2022
 04:48:18 -0800 (PST)
X-Received: by 2002:a05:6808:20a6:b0:2da:3039:8d78 with SMTP id s38-20020a05680820a600b002da30398d78mr3460000oiw.279.1646830098183;
        Wed, 09 Mar 2022 04:48:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646830098; cv=none;
        d=google.com; s=arc-20160816;
        b=Yp/ghny1rHg1UVsAezKMgQ15XmNtUqVBz3IR9PFGJ1FMYT+iAR6+agsDs9X/RCtoA1
         1rjnHUHYWWMNxCQ1rg1nRprJZg1ewKP5eEf7EZDejIF4yloRJmOlhvvAq4jOPlu4LmMg
         vzn8WxHpRQuBIL/At0To4Cs5TYgRbS67f0EIaGId/WmPPBMhl47eBKNq8QNxeTDGrpsK
         xAbBLQnKFo171v9XoYeOfcOPDHzQx+VjpX4fvkaCfBzxs5LuFoIUQrxxZ6dJ5wS0KKAc
         U4qraHF4Fb/QQaxpM+l+KRvyNCHaPubk/Ap4SmqWxwIfncVjGbdUPfPJ5jx4ys/0TyvW
         mMmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=tJo5eCvYa6EH2dxfvVphREQCQhZlRjn0281e/r3br1s=;
        b=J4dhZia/mnvANmCVjsQZKCm42BrXrDxK7AqEP1LHr5jaH9US+ub7w1hp9nA/nNa5OY
         Yavuda37zbjO6eOdADTnDPYIK+s0oO+Ll9IE5C/Dn2mPEtqu75tGlGTsGqolNUCzhFA+
         QM5Af2e4392o4ERbe+mF5Fbikr4fDDruByoABPR0UvKIyfbUVP0XC0Psw4CF7vZ4UEhl
         Lt4gb/nljq/ZhyM7oXJWG0JtXxwsvLN2MP8W1Yd8FSVBwz1kHUhlGtAsFw59ncj2lTIy
         rt+zsykr6a0/SsTg+ShekXvQBsfUGZqRRLsOC8Ca9RJQ79+NTylzyzVERdjL0fN00gxZ
         rKXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id k9-20020a056870d0c900b000d75e329eb1si76714oaa.0.2022.03.09.04.48.15
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Mar 2022 04:48:18 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from dggpemm500022.china.huawei.com (unknown [172.30.72.56])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4KDBgG6W2VzbcGj;
	Wed,  9 Mar 2022 20:42:50 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500022.china.huawei.com (7.185.36.162) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 9 Mar 2022 20:47:40 +0800
Received: from huawei.com (10.175.101.6) by dggpemm500017.china.huawei.com
 (7.185.36.178) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.21; Wed, 9 Mar
 2022 20:47:39 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: Mike Christie <michael.christie@oracle.com>, Lee Duncan
	<lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E . J .
 Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: Wu Bo <wubo40@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH v3 2/3] scsi:libiscsi: Add iscsi_cls_conn to sysfs after been initialized
Date: Wed, 9 Mar 2022 20:57:58 -0500
Message-ID: <20220310015759.3296841-3-haowenchao@huawei.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220310015759.3296841-1-haowenchao@huawei.com>
References: <20220310015759.3296841-1-haowenchao@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as
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

iscsi_create_conn() would expose iscsi_cls_conn to sysfs, while the
initialization of iscsi_conn's dd_data is not ready now. When userspace
try to access an attribute such as connect's address, it might cause
a NULL pointer dereference.

So we should add iscsi_cls_conn to sysfs until it has been initialized.
And remove iscsi_create_conn() by hand since it is not used now.

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 drivers/scsi/libiscsi.c             | 13 ++++-
 drivers/scsi/scsi_transport_iscsi.c | 76 -----------------------------
 include/scsi/scsi_transport_iscsi.h |  2 -
 3 files changed, 11 insertions(+), 80 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 059dae8909ee..38e68b449c08 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -3040,8 +3040,9 @@ iscsi_conn_setup(struct iscsi_cls_session *cls_session, int dd_size,
 	struct iscsi_conn *conn;
 	struct iscsi_cls_conn *cls_conn;
 	char *data;
+	int err;
 
-	cls_conn = iscsi_create_conn(cls_session, sizeof(*conn) + dd_size,
+	cls_conn = iscsi_alloc_conn(cls_session, sizeof(*conn) + dd_size,
 				     conn_idx);
 	if (!cls_conn)
 		return NULL;
@@ -3078,13 +3079,21 @@ iscsi_conn_setup(struct iscsi_cls_session *cls_session, int dd_size,
 		goto login_task_data_alloc_fail;
 	conn->login_task->data = conn->data = data;
 
+	err = iscsi_add_conn(cls_conn);
+	if (err)
+		goto login_task_add_dev_fail;
+
 	return cls_conn;
 
+login_task_add_dev_fail:
+	free_pages((unsigned long) conn->data,
+		   get_order(ISCSI_DEF_MAX_RECV_SEG_LEN));
+
 login_task_data_alloc_fail:
 	kfifo_in(&session->cmdpool.queue, (void*)&conn->login_task,
 		    sizeof(void*));
 login_task_alloc_fail:
-	iscsi_destroy_conn(cls_conn);
+	iscsi_put_conn(cls_conn);
 	return NULL;
 }
 EXPORT_SYMBOL_GPL(iscsi_conn_setup);
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 65117ed5626e..fc33000a6af9 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2437,82 +2437,6 @@ void iscsi_remove_conn(struct iscsi_cls_conn *conn)
 }
 EXPORT_SYMBOL_GPL(iscsi_remove_conn);
 
-/**
- * iscsi_create_conn - create iscsi class connection
- * @session: iscsi cls session
- * @dd_size: private driver data size
- * @cid: connection id
- *
- * This can be called from a LLD or iscsi_transport. The connection
- * is child of the session so cid must be unique for all connections
- * on the session.
- *
- * Since we do not support MCS, cid will normally be zero. In some cases
- * for software iscsi we could be trying to preallocate a connection struct
- * in which case there could be two connection structs and cid would be
- * non-zero.
- */
-struct iscsi_cls_conn *
-iscsi_create_conn(struct iscsi_cls_session *session, int dd_size, uint32_t cid)
-{
-	struct iscsi_transport *transport = session->transport;
-	struct iscsi_cls_conn *conn;
-	unsigned long flags;
-	int err;
-
-	conn = kzalloc(sizeof(*conn) + dd_size, GFP_KERNEL);
-	if (!conn)
-		return NULL;
-	if (dd_size)
-		conn->dd_data = &conn[1];
-
-	mutex_init(&conn->ep_mutex);
-	INIT_LIST_HEAD(&conn->conn_list);
-	INIT_WORK(&conn->cleanup_work, iscsi_cleanup_conn_work_fn);
-	conn->transport = transport;
-	conn->cid = cid;
-	conn->state = ISCSI_CONN_DOWN;
-
-	/* this is released in the dev's release function */
-	if (!get_device(&session->dev))
-		goto free_conn;
-
-	dev_set_name(&conn->dev, "connection%d:%u", session->sid, cid);
-	conn->dev.parent = &session->dev;
-	conn->dev.release = iscsi_conn_release;
-	err = device_register(&conn->dev);
-	if (err) {
-		iscsi_cls_session_printk(KERN_ERR, session, "could not "
-					 "register connection's dev\n");
-		goto release_parent_ref;
-	}
-	err = transport_register_device(&conn->dev);
-	if (err) {
-		iscsi_cls_session_printk(KERN_ERR, session, "could not "
-					 "register transport's dev\n");
-		goto release_conn_ref;
-	}
-
-	spin_lock_irqsave(&connlock, flags);
-	list_add(&conn->conn_list, &connlist);
-	spin_unlock_irqrestore(&connlock, flags);
-
-	ISCSI_DBG_TRANS_CONN(conn, "Completed conn creation\n");
-	return conn;
-
-release_conn_ref:
-	device_unregister(&conn->dev);
-	put_device(&session->dev);
-	return NULL;
-release_parent_ref:
-	put_device(&session->dev);
-free_conn:
-	kfree(conn);
-	return NULL;
-}
-
-EXPORT_SYMBOL_GPL(iscsi_create_conn);
-
 /**
  * iscsi_destroy_conn - destroy iscsi class connection
  * @conn: iscsi cls session
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index ae686addde0c..4af6768e8195 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -445,8 +445,6 @@ extern struct iscsi_cls_conn *iscsi_alloc_conn(struct iscsi_cls_session *sess,
 						int dd_size, uint32_t cid);
 extern int iscsi_add_conn(struct iscsi_cls_conn *conn);
 extern void iscsi_remove_conn(struct iscsi_cls_conn *conn);
-extern struct iscsi_cls_conn *iscsi_create_conn(struct iscsi_cls_session *sess,
-						int dd_size, uint32_t cid);
 extern void iscsi_put_conn(struct iscsi_cls_conn *conn);
 extern void iscsi_get_conn(struct iscsi_cls_conn *conn);
 extern int iscsi_destroy_conn(struct iscsi_cls_conn *conn);
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220310015759.3296841-3-haowenchao%40huawei.com.
