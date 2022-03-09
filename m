Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBEOCTWIQMGQE42SIMFI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CD74D19D4
	for <lists+open-iscsi@lfdr.de>; Tue,  8 Mar 2022 14:58:44 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id k11-20020a54470b000000b002d538f56e6bsf11757733oik.22
        for <lists+open-iscsi@lfdr.de>; Tue, 08 Mar 2022 05:58:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646747923; cv=pass;
        d=google.com; s=arc-20160816;
        b=qdXmEAaUXpyDRtYnRkuAptvv1tfej7No5Zl+bh4vfP+BeWxgZrxMJDEWcW4+gyIvU5
         knGxGaiIe8IKmVgesrYIrJ8Uc82uC979+dv5SlmpNQOzNgD2aTW4r/KT3GXggWw0bDhb
         zTaALy1iNaiB92aUujh0MZhh0eQEyAAEf9IYpq+X+hysUwA1aGKCBwNySVlHcQ2zH5Gx
         WICmwSWrIakV4HQk9wutHHN/Vw9s7eGeB6pCI1fgbT371FXe0xw03nnVUyyiH5lAk7Q2
         1YiVRowSbibyy+ocYesIwODbEvkyAdM8KQ/ievJ64QFiOq8d5Dpdp7MfSooBa6qIPw90
         /+7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=V0GFH1o1IrQyAC7lfOpQUuyurX996Vgwcl/7wKNUwiU=;
        b=OGwYy/rO/+PKipvtNqwOeMhPaYP2OxVg6nx6GN9zztWoZxfMHZueJO78uiXTepvpWO
         Rvpmd0UmSz1QvaSPYPbTW4F+m8C1GO1rJMxQinEsgHFEVHxJ75WwaOrYgj7toz5tgQra
         +pc1wmImEmYgmAiEnWZKnzmZ+TjFBoBayPLwTU38QGauUn8jKR2M01qJxoYG7oQ7xVKM
         /D/8FBROI41RUas+8GHBL21n2uevGc2ecC0sdaKRSxF3ae8QVZsHfg4YnPTGjwpJV5n/
         vGABZ3aJ9WvnEurAwoChCi8koQaSWyHkH0Fb5KAMcoOU+eLQQqN8aGM/E5Mu3aPdpjo+
         LzUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=V0GFH1o1IrQyAC7lfOpQUuyurX996Vgwcl/7wKNUwiU=;
        b=XabWH/LilEdDAHoNyAm6XXQjSWydEetS5gxXjLiMyVwzYf554nfYdtxv74YA57XlZv
         EzEPjhdiebj4T1N0SeVgpMQ9VL3EeVSz7ndrmFsDdhoN4fUNgQGvr9YzkGDMYD5f6aBS
         L2+KViNJ1PyMa25CKkr80pGCbQ+y+T5UYxdJ4zq2L9ocrYyyVp1oECsXAe6cBLVHcf8w
         VrJcVrpkyO5GF9gy87wrdp/OXkOavbee8THj7ivkmo/9eFIKq7MzSPX+pFKAfAfuF1yF
         8rVJW9v+df42HrUWT8U/4Pc375KZaDu8gYZ5YNfXUpR69VX+HxGltUpuU3amTQuVIADo
         hXBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V0GFH1o1IrQyAC7lfOpQUuyurX996Vgwcl/7wKNUwiU=;
        b=lCpl0//9VPuBEk0n75HlGIymbY8SCbTXTbVUwuoQD0CPp+CMVByw2PmpZIQQFszYqs
         Z5vSATxTODru9wcvFawmjn0D0CUqWTLypUFJL/gtWeHnZOp5q5msKk3a8Uwv850HLdT/
         loLZI99qg/B8v7PjLYIEFDCjG+2GrwR0wgbH/bE6yOlJfL+VsnE//+kX+0wP1VybE294
         T7MvYo4g+LiLgQyNwnDtsW+2vsiffMcKf4Vn0L7CdNCtb2G15J5H32MJLyPdxF/tph5L
         jCJXVYhUA4Kwbe3pAoDwkv4EZMTTvbG+hom/aTe9Oc48NnpYpr5RGMoQx+kBycVuRZUb
         K4Sg==
X-Gm-Message-State: AOAM533w4iO+m6xFiTe9liWkKBjkQx2k3wOPE0w7uJKP22HxYUt0qntS
	t6Qa5+LPxFdBtJTfJVl1uzY=
X-Google-Smtp-Source: ABdhPJyMyaQyD9OB7QMV6e//Kwux3DN3YbGFNd04NQY+q8VkC2tdd/2Gbxf05klUZOoxIq59mCKL/A==
X-Received: by 2002:a05:6870:c68b:b0:da:3fed:5705 with SMTP id cv11-20020a056870c68b00b000da3fed5705mr2434486oab.102.1646747922734;
        Tue, 08 Mar 2022 05:58:42 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6808:180e:b0:2cc:2c1b:e0a0 with SMTP id
 bh14-20020a056808180e00b002cc2c1be0a0ls6501909oib.2.gmail; Tue, 08 Mar 2022
 05:58:41 -0800 (PST)
X-Received: by 2002:aca:b9c1:0:b0:2d9:a621:1f9f with SMTP id j184-20020acab9c1000000b002d9a6211f9fmr2615007oif.149.1646747921295;
        Tue, 08 Mar 2022 05:58:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646747921; cv=none;
        d=google.com; s=arc-20160816;
        b=0tciindVnW3ijyRH45H3H+T0gXrqnTuq+Frps9LEy6ee4iYbrMfoNlLQpHBLdU7S7D
         kKbbDi7rWZL5Q7kwynLaul18OfwPBUQnF9tln7z12B7fRp4I9QM+N5XlM5+VcEG+skjC
         6byvACinf7pQUYp4VM5DBkZJcCrGiYH8fEhG8Z51SU0ZEbX2psj0ORNW+NQ4G19tkhJV
         UV1Kv6eps5IyVBHcTyYKlL2YW+sEtjBOX95LYDEcSM3hFea+1zwI93v+Ppqq4IjSvK26
         xB8EPR1jp0gNyNFWHhDmuOMXIrdMdm+1SZyiJju2ftLjlPXHjh0nER4pFxs7v+MQoC5B
         eusQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=Sqn9Jx2bm3eus59N4hYuiea68J8ZFjmJ73+97jDMBDE=;
        b=KfiqSUYxCX27/zyOHHar85j1If4Kzq6iOVtqbpcKVPLGPPgIz+bZ+ICNS64gGJZBEp
         6nWyRm6SBGo901nFvk8QxjfQgku3sJa7TdEkBO4uJfrUtxfuAvSmStKSb5PjsgkJ4kzF
         ufl0mCewfSWvHpzdTNy1jqgm957NqueyFk3o5bEkEny5Scbcch4nfZFkaXbPcdAk75Jj
         dmRZk/mFklsoV/NIIQMr0R4XaLL/PO9Em++VhQY2uq6jphq4/1xfip5LzzBfBXk9eOiI
         0p1XI8RghlguLx2PoxIzWg/iwxoHtgIBfluzKEV7B65f19qLf5bOeZf9y6W5at1NmUbX
         MQVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id t3-20020acaaa03000000b002da08c3e22dsi275045oie.3.2022.03.08.05.58.41
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2022 05:58:41 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggpemm500023.china.huawei.com (unknown [172.30.72.56])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4KCcMc5g0rzdfpm;
	Tue,  8 Mar 2022 21:57:16 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500023.china.huawei.com (7.185.36.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 8 Mar 2022 21:58:38 +0800
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
Subject: [PATCH v2 1/3] scsi: iscsi: Add helper functions to manage iscsi_cls_conn
Date: Tue, 8 Mar 2022 22:09:14 -0500
Message-ID: <20220309030916.2932316-2-haowenchao@huawei.com>
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

iscsi_alloc_conn(): alloc and initialize iscsi_cls_conn
iscsi_add_conn(): expose iscsi_cls_conn to userspace's via sysfs.
iscsi_remove_conn(): remove iscsi_cls_conn from sysfs
iscsi_free_conn(): free iscsi_cls_conn

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 107 ++++++++++++++++++++++++++++
 include/scsi/scsi_transport_iscsi.h |   5 ++
 2 files changed, 112 insertions(+)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 554b6f784223..8e97c6f88359 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2340,6 +2340,113 @@ void iscsi_free_session(struct iscsi_cls_session *session)
 }
 EXPORT_SYMBOL_GPL(iscsi_free_session);
 
+/**
+ * iscsi_alloc_conn - alloc iscsi class connection
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
+ */
+struct iscsi_cls_conn *
+iscsi_alloc_conn(struct iscsi_cls_session *session, int dd_size, uint32_t cid)
+{
+	struct iscsi_transport *transport = session->transport;
+	struct iscsi_cls_conn *conn;
+
+	conn = kzalloc(sizeof(*conn) + dd_size, GFP_KERNEL);
+	if (!conn)
+		return NULL;
+	if (dd_size)
+		conn->dd_data = &conn[1];
+
+	mutex_init(&conn->ep_mutex);
+	INIT_LIST_HEAD(&conn->conn_list);
+	INIT_WORK(&conn->cleanup_work, iscsi_cleanup_conn_work_fn);
+	conn->transport = transport;
+	conn->cid = cid;
+	conn->state = ISCSI_CONN_DOWN;
+
+	/* this is released in the dev's release function */
+	if (!get_device(&session->dev))
+		goto free_conn;
+
+	dev_set_name(&conn->dev, "connection%d:%u", session->sid, cid);
+	device_initialize(&conn->dev);
+	conn->dev.parent = &session->dev;
+	conn->dev.release = iscsi_conn_release;
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
+	err = device_add(&conn->dev);
+	if (err) {
+		iscsi_cls_session_printk(KERN_ERR, session,
+					 "could not register connection's dev\n");
+		put_device(&session->dev);
+		return err;
+	}
+	err = transport_register_device(&conn->dev);
+	if (err) {
+		iscsi_cls_session_printk(KERN_ERR, session,
+					 "could not register transport's dev\n");
+		device_del(&conn->dev);
+		put_device(&session->dev);
+		return err;
+	}
+
+	spin_lock_irqsave(&connlock, flags);
+	list_add(&conn->conn_list, &connlist);
+	spin_unlock_irqrestore(&connlock, flags);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(iscsi_add_conn);
+
+/**
+ * iscsi_remove_conn - remove iscsi class connection from sysfs
+ * @conn: iscsi cls connection
+ *
+ * this would remove iscsi_cls_conn from sysfs, and wait for previous
+ * read/write of iscsi_cls_conn's attributes in sysfs finishing
+ */
+void iscsi_remove_conn(struct iscsi_cls_conn *conn)
+{
+	device_del(&conn->dev);
+}
+EXPORT_SYMBOL_GPL(iscsi_remove_conn);
+
+void iscsi_free_conn(struct iscsi_cls_conn *conn)
+{
+	put_device(&conn->dev);
+}
+EXPORT_SYMBOL_GPL(iscsi_free_conn);
+
 /**
  * iscsi_create_conn - create iscsi class connection
  * @session: iscsi cls session
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index c5d7810fd792..346f65bc3861 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -441,6 +441,11 @@ extern struct iscsi_cls_session *iscsi_create_session(struct Scsi_Host *shost,
 						unsigned int target_id);
 extern void iscsi_remove_session(struct iscsi_cls_session *session);
 extern void iscsi_free_session(struct iscsi_cls_session *session);
+extern struct iscsi_cls_conn *iscsi_alloc_conn(struct iscsi_cls_session *sess,
+						int dd_size, uint32_t cid);
+extern int iscsi_add_conn(struct iscsi_cls_conn *conn);
+extern void iscsi_remove_conn(struct iscsi_cls_conn *conn);
+extern void iscsi_free_conn(struct iscsi_cls_conn *conn);
 extern struct iscsi_cls_conn *iscsi_create_conn(struct iscsi_cls_session *sess,
 						int dd_size, uint32_t cid);
 extern void iscsi_put_conn(struct iscsi_cls_conn *conn);
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220309030916.2932316-2-haowenchao%40huawei.com.
