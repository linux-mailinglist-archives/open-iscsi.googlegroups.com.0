Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBEWCTWIQMGQEFJBRRGY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6572A4D19D8
	for <lists+open-iscsi@lfdr.de>; Tue,  8 Mar 2022 14:58:45 +0100 (CET)
Received: by mail-vs1-xe3e.google.com with SMTP id s125-20020a675e83000000b00320c64c3205sf572524vsb.2
        for <lists+open-iscsi@lfdr.de>; Tue, 08 Mar 2022 05:58:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646747924; cv=pass;
        d=google.com; s=arc-20160816;
        b=oJgmCb9HYHOBTMXrC+7Y7yK2CFstJbACnGFpnwh1vLVl2r8q4vJ7h6S9NiJ2eq7bKW
         3+15xaiv+25Uq/5VoPadbeWAw2q3YlRF8cFlZdyYGfBH0VIYs+UXosCbpQrSCXXPrPjN
         FEQHE35Do9F/BOXUddRT/9fKJ9VkhSt8cVBlirBicy1wbjY2uHcEUUyT0uhc2C5uubyt
         BJed3y5NjQQZ5Dbum/KRHThPpEi9X3Jnm7+Xc7yddUKwdIhKHy3GUdqHMCxeRxScnxcF
         fMyhIDRXOZZn6Z+zhdMAi0c1CI3KEybMwdxWVoN9uqvXJiMQm0a/vBZIyh8lL2UAjcJX
         cJmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=419wS0LR8ECLSC+aw6867gu4tgyX0uAFwzqKWg1IgeI=;
        b=fLj/sfgZqXjwiGCkjat34jrfhnfDw7pdqvajIelOHTg2mWPdeOnJiwTR2AParTHh+I
         I5y4KJp0LJDhFnItBfCt34DDWc16AF1A7uPhhD0Jzgf6FyDp+fe6oYczs3sqZLDpi3ou
         y9LqOTmdJaEcNQ1b4bu8AwUiha9TqbX1zLfWNilVKOwZp+FQeM8sze65y5anA8mfGfv9
         BWNbnPuz7UDXfsC+lTbZIwp0arvGIVn8qXY3DUeKchWZ5lPA9U+pUR8MOUbj+SN15Z6t
         rF6q+yIod8E6nr3GzBvAEt4IIaffAxeMqb/a/LG7RKhZWmOSUxmj7qdZP19bVqZzQtQx
         ywhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=419wS0LR8ECLSC+aw6867gu4tgyX0uAFwzqKWg1IgeI=;
        b=gggLdD6QQsB9YyKomS5Res/s33+gI2ioInqlHJSlkhO/ior0utdzAKjbXEG5i+imq+
         wMTLLyY4q3LNKTtFmqZFCGDQbAjFyZnkB+JveZ4SixmucIB9NjkqjM0svsNdo1gvzWpf
         flR5j7kpqSsiC0EuCY2kaL5GySZAIJixIw8NxH+YYzm6G+VQxeVyceMw/tbfYVJ3qjbO
         MYZRt5evB9XtPhN6uXyT6qlJVSEa7Rnp63hMuyztAsJZ9Uf91W25Qfvg/+iF8akVrkx5
         Tp4jFo0tYPkYa7BwuN2Uv+i35qbH61cDXrKoODAbmQ6uulP5cAm1PyBHJHuu8zVJBVVP
         uJWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=419wS0LR8ECLSC+aw6867gu4tgyX0uAFwzqKWg1IgeI=;
        b=2Pzqyc+UwdSlaed5XiPpNFsO8/gPO89n316ucAA3IUiWIYAgyLqF8vkPfKISq1Fi32
         EAiUuGihefPyvoIvgomU8isZGgrK0uY500EdBO2quoh62pA9scfKoYQxRyy1rpF1aRkn
         eCNuUOA7q6ztjv8XvVM/sDaxzMWYd5WSkOkAROzTaSJRwiCBGVlc4VPtxRpIq/Fhq+Fi
         dH1D0xbzwhSQ3cUU2cuTMLL9o9Lg2s8ff9FcsdItjqqOaYv6qMUgBAEoLUPbuhHi6wjN
         yEJWdz0zv01T3sdhOG+ful0hbpxzijzNXHmqYEGraXFp8uuZIJW+T9zl74p1FzLythBy
         PTFQ==
X-Gm-Message-State: AOAM531g19yKwsZQ1+QYKnwfxfQ2be945N3y+vNHtlEdNtHL4CURL9kB
	Yr7eHB8A6k3JOysV79tlV9U=
X-Google-Smtp-Source: ABdhPJzhv6SYdRiPOqIa+UYm2xMCw+aPLBOX6f9PKEpfN2do08qzA9/LO7cG5eQfH3FT17ePIZ9l5A==
X-Received: by 2002:a05:6102:6c7:b0:31a:da3b:e9fe with SMTP id m7-20020a05610206c700b0031ada3be9femr7223671vsg.68.1646747924168;
        Tue, 08 Mar 2022 05:58:44 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1f:274f:0:b0:32d:b02e:b36f with SMTP id n76-20020a1f274f000000b0032db02eb36fls1483914vkn.10.gmail;
 Tue, 08 Mar 2022 05:58:42 -0800 (PST)
X-Received: by 2002:a1f:7304:0:b0:337:8198:e1f7 with SMTP id o4-20020a1f7304000000b003378198e1f7mr2994616vkc.24.1646747922376;
        Tue, 08 Mar 2022 05:58:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646747922; cv=none;
        d=google.com; s=arc-20160816;
        b=pt8XxSVcUZssCwNNm1kUBtb2VFv7vJ6WZMKDqhu3PHPq3az0JbKVffOcx+cPMcNFQI
         /QRUqA7QHu3LOFXi36Dvblq7n2G4aoXFedyb1XfAs/I35i7NBvbK9ds8AWxVlTi76NEn
         /0cAZZ8+xtgau9meAzRxl5i2XWfEnQxcRShRF2aeiUerqlnQo5+0rgeSPm3Ybx/wl23C
         AgPvn8K6AVpIPWA55FcRJntB0S5dN9dED96Murv4nDKsHkLBMhMZthkvop2JECanTUSf
         SUS9WYbSjlJ0OafTrfE2QdKf30aLLUXAaPb5aYK4W9lWcyML7K932EnHy1xfkVkIBztT
         obZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=F5Dxo/yzMJZDqM+qvO2MIpZWlV9hL9CsEkvXP6WmRSE=;
        b=MocW0DGxoj31CZydNw30QQYSlXohYlRbcjKdY9ly58hV6fVKOOXqblsO06vh4GUR+d
         4XU+5cx/vQhS+Q06tpAykLBX1A8B/+DNptVshSFqAolZMIuKE5dlu7lCY/aAHb7penuy
         xMSlLUF94uKB/8/tUz9RC9bQBLDiJICYUZevUNJ0ogthB/Ynp/MQ+UtDXBr4RrUFIMU/
         0/vtdB50ib07+h2pkR5MIEF14O+CDLGXgKZntdaQC2vjZ+/o0lOKAsG1eEtBmXS/tDvy
         sciciChmWZFU0YDJazysFeJDFc/CKCNHD/99N47fa7UPW1olDThUlQGTbZdgFlFZkDAB
         hEgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id v6-20020ab036a6000000b0034b372f8c0fsi1050422uat.2.2022.03.08.05.58.42
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2022 05:58:42 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from dggpemm500024.china.huawei.com (unknown [172.30.72.53])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4KCcMd5YT6zdZwR;
	Tue,  8 Mar 2022 21:57:17 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500024.china.huawei.com (7.185.36.203) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 8 Mar 2022 21:58:39 +0800
Received: from huawei.com (10.175.101.6) by dggpemm500017.china.huawei.com
 (7.185.36.178) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.21; Tue, 8 Mar
 2022 21:58:38 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: Mike Christie <michael.christie@oracle.com>, Lee Duncan
	<lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E . J .
 Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: Wu Bo <wubo40@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH v2 2/3] scsi:libiscsi: Add iscsi_cls_conn to sysfs after been initialized
Date: Tue, 8 Mar 2022 22:09:15 -0500
Message-ID: <20220309030916.2932316-3-haowenchao@huawei.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220309030916.2932316-1-haowenchao@huawei.com>
References: <20220309030916.2932316-1-haowenchao@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
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

Remove iscsi_create_conn() by hand since it is not used now.

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 drivers/scsi/libiscsi.c             | 13 ++++-
 drivers/scsi/scsi_transport_iscsi.c | 76 -----------------------------
 include/scsi/scsi_transport_iscsi.h |  2 -
 3 files changed, 11 insertions(+), 80 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 059dae8909ee..43f903bce0b8 100644
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
+	iscsi_free_conn(cls_conn);
 	return NULL;
 }
 EXPORT_SYMBOL_GPL(iscsi_conn_setup);
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 8e97c6f88359..ca724eed4f4d 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2447,82 +2447,6 @@ void iscsi_free_conn(struct iscsi_cls_conn *conn)
 }
 EXPORT_SYMBOL_GPL(iscsi_free_conn);
 
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
index 346f65bc3861..505764942f5e 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -446,8 +446,6 @@ extern struct iscsi_cls_conn *iscsi_alloc_conn(struct iscsi_cls_session *sess,
 extern int iscsi_add_conn(struct iscsi_cls_conn *conn);
 extern void iscsi_remove_conn(struct iscsi_cls_conn *conn);
 extern void iscsi_free_conn(struct iscsi_cls_conn *conn);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220309030916.2932316-3-haowenchao%40huawei.com.
