Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBDOEUKIQMGQEFA4KOUQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4664D2F5D
	for <lists+open-iscsi@lfdr.de>; Wed,  9 Mar 2022 13:48:16 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id q15-20020a056830018f00b005b25bbeed24sf1527081ota.18
        for <lists+open-iscsi@lfdr.de>; Wed, 09 Mar 2022 04:48:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646830095; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bz7wRqiSyIGvtp6jq385IAGYzkm3oU5jTC3xkH28EQYCCtU4WJFG8CZDA4099Mhw0V
         c0z/OkFxQoeWo9YH9OxraJV9ciVuj6V1qfse0oP1XQbQtzNFxTulso4jDB6fLJAzbWO8
         Hf9ddYvnEnKHeCnSLDgEJvSvn6ftobj+5mX+wCuMqRzfLN7sCQNUawEuspbVdW8PjzpM
         jrjtMNLMXZrtH+eu9plrwLKMJfrmFn5eN0U3l/PcDa/m4vCxvnuOu1C9Mgmn21OeKV0+
         ANomoFVH/68ae4oMDELp8sftK5Auw0YwrCEAImlFt03nit8wSqcQo2gvBY5Ni6VFQOx0
         xrDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=fPMnE9zGpcjNZLFBzuSjCz8QF+o9TL9b2iNFO+UkMrE=;
        b=rfxlo9tKA6rzCcC2Hk1Sy0kBENNh7s1pqJCXQBbkM0HmZMuqmRXm/OGnsLi25voVLr
         rurlSIPysKNma4NdTJJ5VsAr1i7GeS47iKI0wZtlwhsQPJ9BgJk1RC40vthk7IpigQcI
         yveuJqg5Hr9pakG/SGAi/gb3WWRO10EZDPFnNj5azb3Aj2ZEgxJ2ZSOz12mm9Bm7ZNJH
         Ve8ztINkKYdj31mjhA2hnhQdgL6QjCqz2y18DgR2fDkSpx3XS4cMe+kIXH1LIwd3ivLV
         4sThNt1mfq7jlJM0jSNqb3sbDZu8I36RO1GjNld5jaXX33CziielHhs2hkWzWUXjMZgN
         Dg2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fPMnE9zGpcjNZLFBzuSjCz8QF+o9TL9b2iNFO+UkMrE=;
        b=LlZKG7JdM9RZB90YE6gc7zDyUc/96hKGuPVEGPuXe+QgJYkq2o/PexnyywLTqM/Wtq
         MARIJ9wlybFw0bdTFrwp6CTHoBKMWjsKx25RD1GoSzK0v51k+UesgxqUas0KqJu2ofBM
         b0gEHjlPqmHchLZ4ssiCil2ORu9nc9/riugT94Ae42chvOEHpFvUAgClvMwe8w++KN3z
         IIgA/y0iFi2gmxrAU+lJWK9sRdk8CQesWZaunSBt5DrfUE/MEbLBV5cgLX9bn3M3BvUS
         3PM6VCDNqPC6QfMk+tMjQ8v6+8iucQNsjnLCLG+BaOk7bpvzhw4LnOj0shhU+TIIrz0c
         GcAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fPMnE9zGpcjNZLFBzuSjCz8QF+o9TL9b2iNFO+UkMrE=;
        b=UUpEk+Cd7MhfrnndqlMcLeWWnAWm1ZzbWlwj/AL+XROQIsbXeHJwPmaAVIK/puCKDL
         /YwBgo0N5NHzE0hTNKwop842mY7O9xoWvjnC59b0GufyAUXsDQEc4oiaRH/QWi/Y5DYN
         4JEqW/63aHcWRjceeGJ6QZLTSqvYTZi4NsIToszMIF7lhM/RONbQzt4eyfqBCGDizRvH
         S+0stR0R/tkpgB9Jpz/zg0aYV/wNsgcLq9wy8ej6/U6FMOUv4zLfPiAxp8AFzfp+2bo6
         PDubf51JCNQ6VhRY0ePtnUqy6UstJs0f9N0/7XbHn0ILEuv3qKqe7Bi8D42O3h8CCPuI
         hCbw==
X-Gm-Message-State: AOAM530t9o/GzublS9ovWaZagHkJZ7SOUIJIO5qpxAhOcSA/eagbJnGA
	vPZKVIJH1/5D4e3QfST+3jw=
X-Google-Smtp-Source: ABdhPJxnZNIiVEqMIentKZzC5gN8/UEO9a3Z9GmlT/deckVanEPGnSN5vhCVVGuiBNWuUxJPhBFwKg==
X-Received: by 2002:a05:6808:1510:b0:2d9:e5af:fc01 with SMTP id u16-20020a056808151000b002d9e5affc01mr5829826oiw.122.1646830094823;
        Wed, 09 Mar 2022 04:48:14 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:8316:b0:d7:7ce:898b with SMTP id
 p22-20020a056870831600b000d707ce898bls726863oae.4.gmail; Wed, 09 Mar 2022
 04:48:13 -0800 (PST)
X-Received: by 2002:a05:6871:28c:b0:d9:c109:3b9b with SMTP id i12-20020a056871028c00b000d9c1093b9bmr5136273oae.61.1646830093253;
        Wed, 09 Mar 2022 04:48:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646830093; cv=none;
        d=google.com; s=arc-20160816;
        b=pA3PdmCuJcvsElYsXxa+s++Kbs1IcevIZxB5iJ+85x19CtWthgQfEucnkxfKMXgKWN
         +d2Iar+dYEda1oD74an4DxFhXa271CS+hFECAVe9+3ZmZPfq2y/i2T9rl0h+7YfWvgFb
         KGa+nGF5aRbeWwfc/BAaezArAke8YHRTtnuawEjhL2a4KCvkgx/AdxdnF/dnlos8X71K
         haMGB8Goncex+ue6sGCmyt1sD/5B8hoyut2u1JOlwAMH4w8/I68TF1anVyCrNJRcE+8f
         VAzMePec0oDDYyW3m1guNij7EE7FAhxSC5NE/mPfuZRE8kLuZby5KptiKag4R6bOdyN6
         tnjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=ETHhCbGJvjowdr6BqgVSN0bij2vrYnO7aryzRH4LYf0=;
        b=fShpupH1wKhXDvqRHR41rh7jta6fT0Qtm1TzU1Sim2CzSNzbR46DQTaPlAfsbD2vCP
         1cdwSub5jGQmA5940SbzQHZXH0JwFIFlrmtuKRecFkXsUpqUSqjcUDgfjqMLrXAf8wlo
         fvrN1QAKQArzN6MT72ZkRw2Zl3L5tyVdJo9rNHxul8LT7Nwi3Av2+v97gmiOE/54jCE3
         bPS5R5RPSLYkPkDS4LExbM2yDiWr/weYvetLPlLHBLL79sY6LOZLPKxEYoHwf31xbPlh
         YLtkV0IpnseSnRg3xeMgaZJeNtgwiuKIgzi425rv5ehLMrzFWjFoogVpd5AQQ1L1Ckbe
         ZCYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id y24-20020a056830071800b005af3a0effdfsi181110ots.0.2022.03.09.04.48.12
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Mar 2022 04:48:13 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggpemm500020.china.huawei.com (unknown [172.30.72.54])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4KDBlD57pFzfYkY;
	Wed,  9 Mar 2022 20:46:16 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500020.china.huawei.com (7.185.36.49) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 9 Mar 2022 20:47:39 +0800
Received: from huawei.com (10.175.101.6) by dggpemm500017.china.huawei.com
 (7.185.36.178) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.21; Wed, 9 Mar
 2022 20:47:38 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: Mike Christie <michael.christie@oracle.com>, Lee Duncan
	<lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E . J .
 Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: Wu Bo <wubo40@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH v3 1/3] scsi: iscsi: Add helper functions to manage iscsi_cls_conn
Date: Wed, 9 Mar 2022 20:57:57 -0500
Message-ID: <20220310015759.3296841-2-haowenchao@huawei.com>
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

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 97 +++++++++++++++++++++++++++++
 include/scsi/scsi_transport_iscsi.h |  4 ++
 2 files changed, 101 insertions(+)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 554b6f784223..65117ed5626e 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2340,6 +2340,103 @@ void iscsi_free_session(struct iscsi_cls_session *session)
 }
 EXPORT_SYMBOL_GPL(iscsi_free_session);
 
+/**
+ * iscsi_alloc_conn - alloc iscsi class connection
+ * @session: iscsi cls session
+ * @dd_size: private driver data size
+ * @cid: connection id
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
+		return err;
+	}
+	err = transport_register_device(&conn->dev);
+	if (err) {
+		iscsi_cls_session_printk(KERN_ERR, session,
+					 "could not register transport's dev\n");
+		device_del(&conn->dev);
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
+	unsigned long flags;
+
+	spin_lock_irqsave(&connlock, flags);
+	list_del(&conn->conn_list);
+	spin_unlock_irqrestore(&connlock, flags);
+
+	transport_unregister_device(&conn->dev);
+	device_del(&conn->dev);
+}
+EXPORT_SYMBOL_GPL(iscsi_remove_conn);
+
 /**
  * iscsi_create_conn - create iscsi class connection
  * @session: iscsi cls session
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index c5d7810fd792..ae686addde0c 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -441,6 +441,10 @@ extern struct iscsi_cls_session *iscsi_create_session(struct Scsi_Host *shost,
 						unsigned int target_id);
 extern void iscsi_remove_session(struct iscsi_cls_session *session);
 extern void iscsi_free_session(struct iscsi_cls_session *session);
+extern struct iscsi_cls_conn *iscsi_alloc_conn(struct iscsi_cls_session *sess,
+						int dd_size, uint32_t cid);
+extern int iscsi_add_conn(struct iscsi_cls_conn *conn);
+extern void iscsi_remove_conn(struct iscsi_cls_conn *conn);
 extern struct iscsi_cls_conn *iscsi_create_conn(struct iscsi_cls_session *sess,
 						int dd_size, uint32_t cid);
 extern void iscsi_put_conn(struct iscsi_cls_conn *conn);
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220310015759.3296841-2-haowenchao%40huawei.com.
