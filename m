Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBJ7BS6IQMGQEQDWL7SI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 5823E4CFD53
	for <lists+open-iscsi@lfdr.de>; Mon,  7 Mar 2022 12:46:50 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id n8-20020a0ce488000000b0043519e2750csf12766679qvl.4
        for <lists+open-iscsi@lfdr.de>; Mon, 07 Mar 2022 03:46:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646653609; cv=pass;
        d=google.com; s=arc-20160816;
        b=FCiU/ah6ST/NSk7H6+wUkzH93hn8Nq0QhcZsiZ9H6i9GqD75uoYb46CO0OUDhHs6/P
         afIG0rCUuEd8vXFSmvkBQLOb12Lky+nqYR/QXqfQ31DJschiXvh4Gfs88xWDD9dr6J+C
         9DUMKox7WCnomyRgKvpJfo4KuDnsi4yQpJgwW1Ravt0z3+9PRnXggJS0Uz7RcLD7uG0c
         Xit6ON3zC1A9VidTmXGkw8aprb9lAw3pqhacpSnoZF5UC2zybStNfrwRChqwHiRuEb3w
         FKszN0MyTSCgkmaovIioadZahTgMT8jbVj7TZwUud6lQuyy12IZVvBd1zNVBg8sIfrg5
         ngdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=zhG0aV4RrmZeOpgMi+epGqz1ydDwfA3j80I4OaGvPZI=;
        b=nnWM5nsE8jzTBYLRMJTWpaLHZ4BssgCZ8gZ6xzeP5uf1Z9eIYO0aci+YQkr2h80z+j
         OwiKjeN31fdcJItNQRUYH+IV1Me4XMOUBR8tjrhBWnmQAHnSmB//6s7lQrW3yUsw1G2V
         foV5vd0uy9HzpMunPu8hktu3IREGB0CQuq1qZd8t0r8dYoFmOQusX8QAiWlsHWGPNqjQ
         fkiqf57WAm1ksOZp2NtGF+9sPaOtLrWlgiTemZaN1bpses07Amo68IWWZ2VzByXdClRM
         n5921KtBgRCAboQhU2vvu87nzysh1qC4Ax8c8re4YeXpzdIrBYc2besfOdbckOzz+1AI
         H8Kw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zhG0aV4RrmZeOpgMi+epGqz1ydDwfA3j80I4OaGvPZI=;
        b=ML1TFm3A30WMwVuy5ZY1S7bnWh7ix7rD39NScPsRYUmR7h1Gp6MV+ZClqprwhrei3/
         53rhNoXcbKYDVxh74P0uEjDqZFjmS1+5suWA8AOYOJ/hZVQzMHqIP0bhgR4Ko34uVkXj
         rozg7tASnZ7YGEuhzHL2hV8d0tqw8qgH2okktNVSrmDRhCGqDIkoKIltPt7lRESunK/S
         nE+kxhj72M9Xkejt14Z7oY/1wPtIIzUeTABI0bSBmBCcA5j6Pb0EUOumc3TdPszYfoQY
         HPuOe57GeK313nHi6VsqImKx3WYp5DTyOIfj4LkphqaP/fSLDvqK4pVnGqwbi+E6ziKI
         oTbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zhG0aV4RrmZeOpgMi+epGqz1ydDwfA3j80I4OaGvPZI=;
        b=sccPJzDrxB3Lsupgvs1THWId0CkTsoj+XvQqVUTz154RWDeJysISx/+1ruxZwAxqfy
         3sut6ovABp0AwPxfWwSIOF9jBTVKUDOKSvSz0Id2qyZjiNVc4K6xJe0pYYjJezu0Z3QE
         yztZgNlNLnlGVNvv7IrfrapJ/rA3HyPHCaLrwWHbHmWCPNvnHMlRqfi1cpf9pLmN8EY2
         TQk8IlhYTc/RnbfoaTSOhD4DNdE5RZt9JI84jOJhKKPR1Eg/phAO4qYU+D7OJagUsuRU
         N+yBYgbuoJVwySx1rsF7UfWgEhCzNoPgxG6a9y2Zb+6gl6igW40BvbpnAbxv6UQuK/K5
         c6CA==
X-Gm-Message-State: AOAM533cDg8slqEG0xuXsSyyOvrrKCZj7OyupeyZhdoEWfq7xgXYD5eA
	GAQqHkqnmHal3txygGKV3ek=
X-Google-Smtp-Source: ABdhPJx/rwlrTzwruna+OvGjNbQrICdSspVb2038nUFHDOZ3Xl3QWLa9BW2k6y2t3VYQ89yv8HGQRw==
X-Received: by 2002:a05:620a:298f:b0:67b:30aa:8289 with SMTP id r15-20020a05620a298f00b0067b30aa8289mr2301901qkp.311.1646653608953;
        Mon, 07 Mar 2022 03:46:48 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ad4:5c6d:0:b0:433:2c45:ff3 with SMTP id i13-20020ad45c6d000000b004332c450ff3ls5366095qvh.9.gmail;
 Mon, 07 Mar 2022 03:46:47 -0800 (PST)
X-Received: by 2002:ad4:5cec:0:b0:435:2c3e:f2d9 with SMTP id iv12-20020ad45cec000000b004352c3ef2d9mr7919877qvb.30.1646653607215;
        Mon, 07 Mar 2022 03:46:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646653607; cv=none;
        d=google.com; s=arc-20160816;
        b=BfCRuvXN/6ik/A06y0Gjt5KA7785OjLXmVGhQ+8+0vhfJdxtjEyDYCZnP8wTcb9uUN
         BMDN44CIoqS19mjvKSseUXb9JSlGEubb+DkENkcwFx57XTGEvCI4ZdrA7jVSNkTCQTaP
         vicT0CtvhvlajAwgtpdozlCkvU0/1NiMDSR9Xz6PqmyPpSRgAQpmki5f9lPmZaSmMQDE
         FAztZ2Cw2LQh8RjQvlfqHjuHkgr15uoVPwipGVzZD41RcT/WNiIDf4K4MERQc6Ypjr6a
         v5NuaOvwUzFd1yT77tyBnOJkt33yQga6LIDKvGikr/M1WfsYnhWHAF5cqlvfKT5JeDjY
         rUFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=2JaPWfEhNpAoA4rBEulxb99bPA6uIJ/BnethOwbqLvA=;
        b=geyx/qnnrj/LO1vXrAn3QL0D+QKlfNehjjcANDjBLITg/uD3UDWUcHraFUnCVz8L8I
         UlqRemKpdJwJOT7nqkitCTPCxBZOc30kQifA3giHrD2ij7AA2nWpMfEpRY/XdUqFlULq
         u8aNWtz7TdcUv+UHrGzxEpyPTEJoa6DVkFa+vC3GEDpgGqrcewowfEHx+gJPG91N3471
         fVsiuzESIfxy8e5Vbylgsu8UFkV4tMUt+IrQSvVCOZP3zs6WJlquVbXjh/7uzLyS3avE
         mP0WQihHUz4rMAY22MXH2ueTAt56eq4ghuOqLWhIQ3OE5PURJtg0BNEdns7qg1Gtk8EJ
         6KWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id m17-20020a05622a119100b002dcec4472c3si897543qtk.5.2022.03.07.03.46.46
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2022 03:46:47 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggpemm500020.china.huawei.com (unknown [172.30.72.57])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4KBxTJ4V58zdfxC;
	Mon,  7 Mar 2022 19:44:52 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500020.china.huawei.com (7.185.36.49) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 7 Mar 2022 19:46:13 +0800
Received: from huawei.com (10.175.101.6) by dggpemm500017.china.huawei.com
 (7.185.36.178) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.21; Mon, 7 Mar
 2022 19:46:13 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: Mike Christie <michael.christie@oracle.com>, Lee Duncan
	<lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E . J .
 Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: Wu Bo <wubo40@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>,
	Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH 1/2] scsi: iscsi: Add helper functions to alloc and add iscsi_cls_conn
Date: Mon, 7 Mar 2022 19:56:53 -0500
Message-ID: <20220308005654.2281343-2-haowenchao@huawei.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220308005654.2281343-1-haowenchao@huawei.com>
References: <20220308005654.2281343-1-haowenchao@huawei.com>
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

iscsi_alloc_conn() would alloc and initialize iscsi_cls_conn but do
not expose it to userspace.
iscsi_add_conn() would expose it to userspace.

LLDs should split the alloc and register to 2 steps.

And simplify iscsi_create_conn() with these helper functions.

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 85 +++++++++++++++++++++++------
 include/scsi/scsi_transport_iscsi.h |  3 +
 2 files changed, 72 insertions(+), 16 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 554b6f784223..092d4429bb1d 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2341,7 +2341,7 @@ void iscsi_free_session(struct iscsi_cls_session *session)
 EXPORT_SYMBOL_GPL(iscsi_free_session);
 
 /**
- * iscsi_create_conn - create iscsi class connection
+ * iscsi_alloc_conn - alloc iscsi class connection
  * @session: iscsi cls session
  * @dd_size: private driver data size
  * @cid: connection id
@@ -2356,12 +2356,10 @@ EXPORT_SYMBOL_GPL(iscsi_free_session);
  * non-zero.
  */
 struct iscsi_cls_conn *
-iscsi_create_conn(struct iscsi_cls_session *session, int dd_size, uint32_t cid)
+iscsi_alloc_conn(struct iscsi_cls_session *session, int dd_size, uint32_t cid)
 {
 	struct iscsi_transport *transport = session->transport;
 	struct iscsi_cls_conn *conn;
-	unsigned long flags;
-	int err;
 
 	conn = kzalloc(sizeof(*conn) + dd_size, GFP_KERNEL);
 	if (!conn)
@@ -2383,35 +2381,90 @@ iscsi_create_conn(struct iscsi_cls_session *session, int dd_size, uint32_t cid)
 	dev_set_name(&conn->dev, "connection%d:%u", session->sid, cid);
 	conn->dev.parent = &session->dev;
 	conn->dev.release = iscsi_conn_release;
+
+	return conn;
+
+free_conn:
+	kfree(conn);
+	return NULL;
+}
+EXPORT_SYMBOL_GPL(iscsi_alloc_conn);
+
+/**
+ * iscsi_add_conn - add iscsi class connection
+ * @conn: iscsi cls connection
+ *
+ * this would expose iscsi_cls_conn to sysfs, so make sure the related
+ * resources when access sysfs attributes are initialized before calling this.
+ */
+int iscsi_add_conn(struct iscsi_cls_conn *conn)
+{
+	int err;
+	unsigned long flags;
+	struct iscsi_cls_session *session = iscsi_dev_to_session(conn->dev.parent);
+
 	err = device_register(&conn->dev);
 	if (err) {
 		iscsi_cls_session_printk(KERN_ERR, session, "could not "
 					 "register connection's dev\n");
-		goto release_parent_ref;
+		put_device(&session->dev);
+		return err;
 	}
 	err = transport_register_device(&conn->dev);
 	if (err) {
 		iscsi_cls_session_printk(KERN_ERR, session, "could not "
 					 "register transport's dev\n");
-		goto release_conn_ref;
+		device_unregister(&conn->dev);
+		put_device(&session->dev);
+		return err;
 	}
 
 	spin_lock_irqsave(&connlock, flags);
 	list_add(&conn->conn_list, &connlist);
 	spin_unlock_irqrestore(&connlock, flags);
 
+	return 0;
+}
+EXPORT_SYMBOL_GPL(iscsi_add_conn);
+
+/**
+ * iscsi_create_conn - create iscsi class connection
+ * @session: iscsi cls session
+ * @dd_size: private driver data size
+ * @cid: connection id
+ *
+ * This can be called from a LLD or iscsi_transport. The connection
+ * is child of the session so cid must be unique for all connections
+ * on the session.
+ *
+ * Since we do not support MCS, cid will normally be zero. In some cases
+ * for software iscsi we could be trying to preallocate a connection struct
+ * in which case there could be two connection structs and cid would be
+ * non-zero.
+ *
+ * Note: iscsi_cls_conn would be exposed to sysfs after this function, it
+ * means attributes of iscsi_cls_conn are accessible to userspace. So the
+ * caller must make sure everything related these sysfs attributes are
+ * already initialized.
+ */
+struct iscsi_cls_conn *
+iscsi_create_conn(struct iscsi_cls_session *session, int dd_size, uint32_t cid)
+{
+	struct iscsi_cls_conn *conn;
+	int err;
+
+	conn = iscsi_alloc_conn(session, dd_size, cid);
+	if (!conn)
+		return NULL;
+
+	err = iscsi_add_conn(conn);
+	if (err) {
+		kfree(conn);
+		return NULL;
+	}
+
 	ISCSI_DBG_TRANS_CONN(conn, "Completed conn creation\n");
 	return conn;
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
 }
 
 EXPORT_SYMBOL_GPL(iscsi_create_conn);
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index c5d7810fd792..fd9ce99c2186 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -441,6 +441,9 @@ extern struct iscsi_cls_session *iscsi_create_session(struct Scsi_Host *shost,
 						unsigned int target_id);
 extern void iscsi_remove_session(struct iscsi_cls_session *session);
 extern void iscsi_free_session(struct iscsi_cls_session *session);
+extern int iscsi_add_conn(struct iscsi_cls_conn *conn);
+extern struct iscsi_cls_conn *iscsi_alloc_conn(struct iscsi_cls_session *sess,
+						int dd_size, uint32_t cid);
 extern struct iscsi_cls_conn *iscsi_create_conn(struct iscsi_cls_session *sess,
 						int dd_size, uint32_t cid);
 extern void iscsi_put_conn(struct iscsi_cls_conn *conn);
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220308005654.2281343-2-haowenchao%40huawei.com.
