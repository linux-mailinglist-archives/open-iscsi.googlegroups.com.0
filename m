Return-Path: <open-iscsi+bncBC755V5RXMKBBLN5R6PQMGQEW6VU7HI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id D81A368F5C4
	for <lists+open-iscsi@lfdr.de>; Wed,  8 Feb 2023 18:41:03 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id m3-20020a2ea583000000b0029099954a31sf4903061ljp.3
        for <lists+open-iscsi@lfdr.de>; Wed, 08 Feb 2023 09:41:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675878063; cv=pass;
        d=google.com; s=arc-20160816;
        b=QeFH+O6wocF0aTIJYcrQbwC01IB48b24CmElvXOnLHWTBT+tNnqO2evSR90kwV4Csn
         ncOuMWE+blZWIy5ZY0VReZ5VkGy32I8tyeznAI9hR7NqZpxWz3T/cqn1Joe+Suyotd4w
         N+PrJ44pZB5vmbnt3HP/Rn2Knhjzioni3utN4c5AICKSBKA1PBIxjMYMuCRr9lhtBMWn
         VFnQcxbuwkJ7iGUVa+B0W5uNC52sBGb9q4UMK1kmLhHyQc8WaK9Ek6prYp8mGWgOCIcu
         UD8v+RYRCQLhr/mpoeakUwSvg60xalKkKBophx+oIDi8caj8/auhZVLKG1M5eoBS/oR+
         yyZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=Go9/bClt/cI/UORwd/VOs4tx5UE7pFZRixroQrYrm7E=;
        b=l6wD4gaAy72ifLi7Q14TTQhfz9KMJkfwxIzpiuMtIciLgy2xf4Z2Wa2lCuWvNLSrHZ
         fl8B6yUqdEjXpD40RpBSgabQSJIAkJMQ8Frcih7zfkhu7ky9URkflE94AIKkfqMKyFNv
         7ADDclm+p2aqN3o4fvvnDn/LzHUU8tOtuWlFs7+fBgBBUvaSw52OwSjy1pv9TADYgbYt
         kk1sqSEN897ZoTJxwRH8I/V2wSyLEvc6akiNMN/ZM9BrgxqDHl6ApeZkvYPKuTlb51ei
         NKYuSiARj3cZd7zTWwq4qMD03LWICgH7+koeZD7Ltu8F0Z7ZlVz5CHeekmMsS91hBCYe
         NqMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lduncan@suse.de designates 2001:67c:2178:6::1d as permitted sender) smtp.mailfrom=lduncan@suse.de;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Go9/bClt/cI/UORwd/VOs4tx5UE7pFZRixroQrYrm7E=;
        b=kTnvAThBcfKGNJCwWMgrDLL0Jx8p6HzVYfPlZPGRkrk33sCbI70uwLeTrbFmzUdgX9
         bwiRNBBBekmAv+zBZmcS/FiIxZDQD/GkR8K9bVKFaIpzch+jObjyZpSiyjui4qcDi23P
         7xDiDEJF8k7ozRBn44nUGZsWjt9p1Wz0g7ZkpuDxkRPL6OEs1itRtvERo9uDPVKAmsBG
         yKrj9cVQNo8D0mBkbdt23LYNILYRa5vSdCYRx2At1KoLfPkTp/xo/EwGcTIbBuRAusSP
         OwrXxGJjJV520HLUutPkeMSWXdv6RxKtVkUHjCdbZG8v623K4RJXNUOxOsBomqzPCf2J
         kvCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Go9/bClt/cI/UORwd/VOs4tx5UE7pFZRixroQrYrm7E=;
        b=oOQ5gN5fM+357dEuwYTbvS152uywy9UlSqqM/csluIpUlWsmk7MVaTuGA9RfhF8t31
         KRqC7qiWa+6AKwdLp/wJMGEaew8ZnuEchI1FLFqcxwbMRp4iv+3FONzcwOBmnVvP6VNg
         /YuVQl4jB15JRSrXa1ZQXST+yhHDckASAnDzVNuO6DmcZWJ9ivmy31ZpOaE1/Zghy10T
         HR21EOeSF04fclgfTwrGeEbZNO3iGMO+LQkqa6fQsYd+Ds92vfWteege5rHBDu3GW5a3
         brK5ErTa+SmvDOJN86PnIDZMwfLFqAkbDe3XmEFUOL914q4BjTT2oZLyccM7H5FGS5oy
         F8EA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKUWm74qB/1BUuCFusJ+l3heCplnH3d0mR7030kCRzf6ykZOjyjS
	lIhcUH8S7sSROKN7/8AVPl4=
X-Google-Smtp-Source: AK7set8DKnNr4YNt8Scm2LJHnIegPu7EbG/9SU9Xzxf06GyEdyAE05Vnyo8Pf7EpzqY4XOjS2DZaiA==
X-Received: by 2002:ac2:5213:0:b0:4cc:53e2:5382 with SMTP id a19-20020ac25213000000b004cc53e25382mr1183393lfl.220.1675878063265;
        Wed, 08 Feb 2023 09:41:03 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:651c:511:b0:293:2195:525b with SMTP id
 o17-20020a05651c051100b002932195525bls850185ljp.5.-pod-prod-gmail; Wed, 08
 Feb 2023 09:40:59 -0800 (PST)
X-Received: by 2002:a2e:5ca:0:b0:293:2540:a165 with SMTP id 193-20020a2e05ca000000b002932540a165mr1063024ljf.18.1675878059924;
        Wed, 08 Feb 2023 09:40:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675878059; cv=none;
        d=google.com; s=arc-20160816;
        b=la+R7gthsjXgJJ7MrK9qPkow6VXcGcV1hbKS4Pln45s9/z1pA5tgmlS+/osYceII9c
         Xdz0zXOc15E3wCTBbN5Ewdy4xpL9oFNYJQ9XXwi4Zv7kgjanj0aRRX36gaHTHXuDCMud
         a54+uKEuvJCukPnZbnE02Q+4S+2KMFthVOJiX3QGOsDZrjKNKGEIqpvf4lDlkmDKNdd6
         DYcfQ0RXoHPv8g8o1NxS7QmRL+XBibNEkFDcJWl1qN3Mdny7yEt0VVtXt4eIted527rW
         fftiJDZYqwNIzT7nF8hYEg8zaCdeCfGqOEdEpYp3KRy7xpTYv5vazDxv9fwHZRZJvdqx
         n/WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=Oxjd3eCYwqoat23wl7AE9mCtTfmKG4+0hQ08/Hx5e6M=;
        b=i9wh0ub/Xay8GLe6BdkARZMXOSZ5d01RhivVs6gBPdxbjeESXMVbOkrDZmWhj+l45A
         P3rh5H64OSwYcteQEK9HPOiHStYYlvQWjuxNFT24vrxZk04xk4+sEJCB8a1T0RiypUL3
         d06RLdwkzkBeE7izCqDRhO445N+NdDRhayFnWgk1W8+/+OTesTlhHfAaLP839/oJsZ2G
         Im/HK2hXsbKvnQpn99FMX+Vqr/Hu1p8RS0akxQ+X86seijTWpY8BUL+Azk9cC50CJrpB
         NrzILokRQbPRIo0TLO4rGAVaZBD+wgUkkITTp30E5LPK8dAOyQ/Bgmo2IxIyhu3IUwPM
         Xkjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lduncan@suse.de designates 2001:67c:2178:6::1d as permitted sender) smtp.mailfrom=lduncan@suse.de;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [2001:67c:2178:6::1d])
        by gmr-mx.google.com with ESMTPS id y13-20020a05651c154d00b00292f86f4312si712555ljp.0.2023.02.08.09.40.59
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 09:40:59 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.de designates 2001:67c:2178:6::1d as permitted sender) client-ip=2001:67c:2178:6::1d;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out2.suse.de (Postfix) with ESMTP id 425C21FF2B;
	Wed,  8 Feb 2023 17:40:59 +0000 (UTC)
Received: from localhost (unknown [10.163.24.10])
	by relay2.suse.de (Postfix) with ESMTP id 03EB92C143;
	Wed,  8 Feb 2023 17:40:59 +0000 (UTC)
Received: by localhost (Postfix, from userid 1000)
	id 276D3CA188; Wed,  8 Feb 2023 09:40:57 -0800 (PST)
From: Lee Duncan <leeman.duncan@gmail.com>
To: linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	netdev@vger.kernel.org
Cc: Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>
Subject: [RFC PATCH 2/9] iscsi: associate endpoints with a host
Date: Wed,  8 Feb 2023 09:40:50 -0800
Message-Id: <154c7602b3cc59f8af44439249ea5e5eb75f92d3.1675876734.git.lduncan@suse.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <cover.1675876731.git.lduncan@suse.com>
References: <cover.1675876731.git.lduncan@suse.com>
MIME-Version: 1.0
X-Original-Sender: leeman.duncan@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lduncan@suse.de designates 2001:67c:2178:6::1d as
 permitted sender) smtp.mailfrom=lduncan@suse.de;       dmarc=fail (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

From: Lee Duncan <lduncan@suse.com>

Right now the iscsi_endpoint is only linked to a connection once that
connection has been established.  For net namespace filtering of the
sysfs objects, associate an endpoint with the host that it was
allocated for when it is created.

Signed-off-by: Chris Leech <cleech@redhat.com>
Signed-off-by: Lee Duncan <lduncan@suse.com>
---
 drivers/infiniband/ulp/iser/iscsi_iser.c | 2 +-
 drivers/scsi/be2iscsi/be_iscsi.c         | 2 +-
 drivers/scsi/bnx2i/bnx2i_iscsi.c         | 2 +-
 drivers/scsi/cxgbi/libcxgbi.c            | 2 +-
 drivers/scsi/qedi/qedi_iscsi.c           | 2 +-
 drivers/scsi/qla4xxx/ql4_os.c            | 2 +-
 drivers/scsi/scsi_transport_iscsi.c      | 3 ++-
 include/scsi/scsi_transport_iscsi.h      | 6 +++++-
 8 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/infiniband/ulp/iser/iscsi_iser.c b/drivers/infiniband/ulp/iser/iscsi_iser.c
index 620ae5b2d80d..d38c909b462f 100644
--- a/drivers/infiniband/ulp/iser/iscsi_iser.c
+++ b/drivers/infiniband/ulp/iser/iscsi_iser.c
@@ -802,7 +802,7 @@ static struct iscsi_endpoint *iscsi_iser_ep_connect(struct Scsi_Host *shost,
 	struct iser_conn *iser_conn;
 	struct iscsi_endpoint *ep;
 
-	ep = iscsi_create_endpoint(0);
+	ep = iscsi_create_endpoint(shost, 0);
 	if (!ep)
 		return ERR_PTR(-ENOMEM);
 
diff --git a/drivers/scsi/be2iscsi/be_iscsi.c b/drivers/scsi/be2iscsi/be_iscsi.c
index 8aeaddc93b16..c893d193f5ef 100644
--- a/drivers/scsi/be2iscsi/be_iscsi.c
+++ b/drivers/scsi/be2iscsi/be_iscsi.c
@@ -1168,7 +1168,7 @@ beiscsi_ep_connect(struct Scsi_Host *shost, struct sockaddr *dst_addr,
 		return ERR_PTR(ret);
 	}
 
-	ep = iscsi_create_endpoint(sizeof(struct beiscsi_endpoint));
+	ep = iscsi_create_endpoint(shost, sizeof(struct beiscsi_endpoint));
 	if (!ep) {
 		ret = -ENOMEM;
 		return ERR_PTR(ret);
diff --git a/drivers/scsi/bnx2i/bnx2i_iscsi.c b/drivers/scsi/bnx2i/bnx2i_iscsi.c
index a3c800e04a2e..ac63e93e07c6 100644
--- a/drivers/scsi/bnx2i/bnx2i_iscsi.c
+++ b/drivers/scsi/bnx2i/bnx2i_iscsi.c
@@ -384,7 +384,7 @@ static struct iscsi_endpoint *bnx2i_alloc_ep(struct bnx2i_hba *hba)
 	struct bnx2i_endpoint *bnx2i_ep;
 	u32 ec_div;
 
-	ep = iscsi_create_endpoint(sizeof(*bnx2i_ep));
+	ep = iscsi_create_endpoint(hba->shost, sizeof(*bnx2i_ep));
 	if (!ep) {
 		printk(KERN_ERR "bnx2i: Could not allocate ep\n");
 		return NULL;
diff --git a/drivers/scsi/cxgbi/libcxgbi.c b/drivers/scsi/cxgbi/libcxgbi.c
index af281e271f88..94edf8e1fb0c 100644
--- a/drivers/scsi/cxgbi/libcxgbi.c
+++ b/drivers/scsi/cxgbi/libcxgbi.c
@@ -2926,7 +2926,7 @@ struct iscsi_endpoint *cxgbi_ep_connect(struct Scsi_Host *shost,
 		goto release_conn;
 	}
 
-	ep = iscsi_create_endpoint(sizeof(*cep));
+	ep = iscsi_create_endpoint(shost, sizeof(*cep));
 	if (!ep) {
 		err = -ENOMEM;
 		pr_info("iscsi alloc ep, OOM.\n");
diff --git a/drivers/scsi/qedi/qedi_iscsi.c b/drivers/scsi/qedi/qedi_iscsi.c
index 31ec429104e2..4baf1dbb8e92 100644
--- a/drivers/scsi/qedi/qedi_iscsi.c
+++ b/drivers/scsi/qedi/qedi_iscsi.c
@@ -931,7 +931,7 @@ qedi_ep_connect(struct Scsi_Host *shost, struct sockaddr *dst_addr,
 		return ERR_PTR(-ENXIO);
 	}
 
-	ep = iscsi_create_endpoint(sizeof(struct qedi_endpoint));
+	ep = iscsi_create_endpoint(shost, sizeof(struct qedi_endpoint));
 	if (!ep) {
 		QEDI_ERR(&qedi->dbg_ctx, "endpoint create fail\n");
 		ret = -ENOMEM;
diff --git a/drivers/scsi/qla4xxx/ql4_os.c b/drivers/scsi/qla4xxx/ql4_os.c
index 005502125b27..acebf9c92c04 100644
--- a/drivers/scsi/qla4xxx/ql4_os.c
+++ b/drivers/scsi/qla4xxx/ql4_os.c
@@ -1717,7 +1717,7 @@ qla4xxx_ep_connect(struct Scsi_Host *shost, struct sockaddr *dst_addr,
 	}
 
 	ha = iscsi_host_priv(shost);
-	ep = iscsi_create_endpoint(sizeof(struct qla_endpoint));
+	ep = iscsi_create_endpoint(shost, sizeof(struct qla_endpoint));
 	if (!ep) {
 		ret = -ENOMEM;
 		return ERR_PTR(ret);
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index be69cea9c6f8..86bafdb862a5 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -204,7 +204,7 @@ static struct attribute_group iscsi_endpoint_group = {
 };
 
 struct iscsi_endpoint *
-iscsi_create_endpoint(int dd_size)
+iscsi_create_endpoint(struct Scsi_Host *shost, int dd_size)
 {
 	struct iscsi_endpoint *ep;
 	int err, id;
@@ -230,6 +230,7 @@ iscsi_create_endpoint(int dd_size)
 
 	ep->id = id;
 	ep->dev.class = &iscsi_endpoint_class;
+	ep->dev.parent = &shost->shost_gendev;
 	dev_set_name(&ep->dev, "ep-%d", id);
 	err = device_register(&ep->dev);
         if (err)
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index 34c03707fb6e..268ccaac1c05 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -287,6 +287,9 @@ struct iscsi_cls_session {
 #define iscsi_session_to_shost(_session) \
 	dev_to_shost(_session->dev.parent)
 
+#define iscsi_endpoint_to_shost(_ep) \
+	dev_to_shost(_ep->dev.parent)
+
 #define starget_to_session(_stgt) \
 	iscsi_dev_to_session(_stgt->dev.parent)
 
@@ -462,7 +465,8 @@ extern void iscsi_put_conn(struct iscsi_cls_conn *conn);
 extern void iscsi_get_conn(struct iscsi_cls_conn *conn);
 extern void iscsi_unblock_session(struct iscsi_cls_session *session);
 extern void iscsi_block_session(struct iscsi_cls_session *session);
-extern struct iscsi_endpoint *iscsi_create_endpoint(int dd_size);
+extern struct iscsi_endpoint *iscsi_create_endpoint(struct Scsi_Host *shost,
+						    int dd_size);
 extern void iscsi_destroy_endpoint(struct iscsi_endpoint *ep);
 extern struct iscsi_endpoint *iscsi_lookup_endpoint(u64 handle);
 extern void iscsi_put_endpoint(struct iscsi_endpoint *ep);
-- 
2.39.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/154c7602b3cc59f8af44439249ea5e5eb75f92d3.1675876734.git.lduncan%40suse.com.
