Return-Path: <open-iscsi+bncBCYMVIPVXQMBB56F3ORAMGQE7CMCDWQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F066F94FA
	for <lists+open-iscsi@lfdr.de>; Sun,  7 May 2023 01:30:02 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id d9443c01a7336-1aafa03f55asf15384145ad.2
        for <lists+open-iscsi@lfdr.de>; Sat, 06 May 2023 16:30:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1683415801; cv=pass;
        d=google.com; s=arc-20160816;
        b=RG4uVfCunuY+CDHjS2IWSVwUfjAX6sOqEAZKuwtlswBOCXvOWvi0BWa8PAyQyLuY2q
         Mx8664QU5u1pOqCDlNaEYjMD56doZZWxUvqp5MLlNXbtXYSm1dqL+b6CiU56OHRkqePY
         npzI6SgBszk/v7f/3CmVYGeu88iFo2aVG7bg82kAXBlMsgyBQUb6/sfYD4wEwQSTAUPR
         o7ctsJQ3Ffl4wzKHDVJ0tHAF/6A3Mqm5CXulrKD96oJYh1WOheO+W5I+Y6RWeOmIIrBm
         tJnBsYZkGM0TlaORCXbIVB21EirvBnL3Lg5u9H+eCcYtRcVAdlG3E+M85nFYwWiUfnlk
         ixMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=9I3gTg86E+5Iyb1EVmCjIFmLykAJdJUBmLg6OSgQ6wI=;
        b=lP/CugsA+VL48BIr7roQnkLt3xvva6vLv8lsRS4yuHeaTgbQPi2qz/S6NPBCb01oAk
         9YdJiSBwGPcOSqXjjZWq97oL/gcWCIlCSe2DL1aRFZ4CTEV/JJ9gVwAXk6P8OhH/xGnc
         9ueRa9019Ns0XHfAFB2g6jrskLfz+c3vUuDHxTylOhmk7Vr6qUMAn6RXKC44dr4kvdoQ
         /AtiVR8XayOINycp6fGS0r5SQCWrC85A2hsG/oTc75k4VZsjIHaSA1cbkGt2ecg22dBj
         qvMYcTkpU88HDxW1+gJiK8iNHfTI9z5Y1WY4AAXdoD0F3uqP2nXV9F2DIQNmtKT+y+Jp
         WYfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BLg0JFGS;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1683415801; x=1686007801;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9I3gTg86E+5Iyb1EVmCjIFmLykAJdJUBmLg6OSgQ6wI=;
        b=hm7xMdg1Pm5hitznLf/XwjnlSnusxozVcCCjMyG7ZBRDyO/7BGNKd0FubCzdc8ylW/
         GqqrcuUh4K0hYXDiQHJX2sMXHeoiToD/f6v69Kj4vPp6oLo1+8hdKBRbMQOw9D7R83d6
         DQZgo2w/GS27NjD77xQ1vVoZT3HZTc6h5WzagHKIv6ABCQVw6S0xsCtP7Top5DkSFamW
         bw7blSyQo768c4LuUXeTcD5U5yYAThWL3kTnr611wu7gudz9qulxUTEIv7ht0XA/3ZWq
         gTb058f0ZCYYSmvqr+ahqzirKGe9Sl4xXrtaz5THAZL5ruKuanogZgCNCPJFzJp9et5z
         Lw3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683415801; x=1686007801;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9I3gTg86E+5Iyb1EVmCjIFmLykAJdJUBmLg6OSgQ6wI=;
        b=WyWMpq2AYXFqR6Wd9Mx6rI3mHFVePZhRKAzrQPVVNfm5MR7u5fRiA0rioaSexb11XE
         IW84FixpH/bIl99Ciw8tLUdekq7knbrMxWV8yhNUDpF/lAQ4k8pR/OCTTE8l5iff/Jhq
         h0lTf1u6S04aKf9piT63jGhIgA6gL9wLQaqCBBCHsKu6BEkWLrUbJqH97UJs5DmCgt9B
         pzFH4aBPaqh5tJelzHFIDFgAWxUfAC4jF/CsvTHJf3sfjKjVFusv4zFoWb9l33sLkX26
         mQ2FNmJXwU42/ZPeuBxwZviveBep6WpqDNSDTqUUkICVem9CdtvjlhYa5M3EH8S2Zs3Z
         ZB3Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AC+VfDySCveOCToJ2K54pvCiPWXW4m28pBjma0O74Dal5H1vIcehmjnw
	LV7RDeLGXMxRygSmTIBZBU8=
X-Google-Smtp-Source: ACHHUZ6rUGW0rN8RJFfA0CYLyjNH6duAeFUalhTvuFjGFOfvtU+L9B/5LLWC+YAoYYZOzsHFdCkb4g==
X-Received: by 2002:a17:902:c382:b0:1a1:b305:f891 with SMTP id g2-20020a170902c38200b001a1b305f891mr1832953plg.9.1683415801283;
        Sat, 06 May 2023 16:30:01 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:6b07:b0:19c:a86d:b340 with SMTP id
 o7-20020a1709026b0700b0019ca86db340ls20483795plk.9.-pod-prod-gmail; Sat, 06
 May 2023 16:29:59 -0700 (PDT)
X-Received: by 2002:a05:6a20:7353:b0:fb:8140:cec6 with SMTP id v19-20020a056a20735300b000fb8140cec6mr7236673pzc.8.1683415799037;
        Sat, 06 May 2023 16:29:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1683415799; cv=none;
        d=google.com; s=arc-20160816;
        b=0in8kVJ6kmuMchD/9tDn2SRpbxQOKrTRA10DW5gTLWKxHKUClCpps8BE4U9KEhCjrN
         gTdbiM42Kb6wFWoTxpKJzu7p+ncdTz6L0HXSSuRv3/iWaDzRzBqrrgNP21VSZhjI/E2+
         7YGSp8GR5hwKIfz4CWmA8IYYShn1iketyiIBLh5pBu0cYHrHiDwN2Vkaim26hV1Gg4ip
         TdpfAnJxCT58pZMvzTYa+4oL70QMXTQoeoQZUDrG9sgNgKGJbFBtr4+OIggWNYRG++VM
         nA0OWfN7OFTXXX54TP+ke0xu1aAL6E5Sl6VhjplT13B6fZTxDJDftsNmFjR58R+Fu9LP
         ZCYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hYyQlEMhSGqDHAeBkFmR50DWq7fNvIgSCciz+KWBYp8=;
        b=C6gEKUssSNUR6twH9IfXJBvwqr4hViauGR7D1j2j025eA9tSI2+Jy5Wvjq9uCxzCWE
         elA+As1YA5KMNDepg07SN4EHHeUQMuJBVXkLlzS9fmRd4/g8TM2H101RZGv1uzHGHPz4
         cNwCcW5BmWdc4ecYQ5E1ikkDe8zDv4dGaN5tfc+M81iOzxLUkARzVw7olaDU+rDVe/Hb
         n3tNQwtgtAGHkgBchIvAa1ehmai1el7R14bE65Dif7JiEZlG2K0yjEMuDYyMfIt9XzVW
         0DPImeEdyf0WNanqwhzoNAMXBfKEvFUB442gJj0szFZ4xLM3eZnKl62DbLHIlf0arjUG
         C0LA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BLg0JFGS;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by gmr-mx.google.com with ESMTPS id l8-20020a63f308000000b0051322a48c32si277180pgh.1.2023.05.06.16.29.58
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 May 2023 16:29:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-561-6lRs3NMePeu1eoQ-2i5ylg-1; Sat, 06 May 2023 19:29:55 -0400
X-MC-Unique: 6lRs3NMePeu1eoQ-2i5ylg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 94E143806700;
	Sat,  6 May 2023 23:29:54 +0000 (UTC)
Received: from toolbox.redhat.com (unknown [10.2.16.10])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CE2F535443;
	Sat,  6 May 2023 23:29:53 +0000 (UTC)
From: Chris Leech <cleech@redhat.com>
To: Lee Duncan <lduncan@suse.com>,
	linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	netdev@vger.kernel.org
Cc: Chris Leech <cleech@redhat.com>
Subject: [PATCH 02/11] iscsi: associate endpoints with a host
Date: Sat,  6 May 2023 16:29:21 -0700
Message-Id: <20230506232930.195451-3-cleech@redhat.com>
In-Reply-To: <20230506232930.195451-1-cleech@redhat.com>
References: <20230506232930.195451-1-cleech@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=BLg0JFGS;
       spf=pass (google.com: domain of cleech@redhat.com designates
 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

Right now the iscsi_endpoint is only linked to a connection once that
connection has been established.  For net namespace filtering of the
sysfs objects, associate an endpoint with the host that it was
allocated for when it is created, when possible.

iSER creates endpoints before hosts and sessions, so we need to keep
compatibility with virtual device paths and not always expect a parent
host.

Signed-off-by: Lee Duncan <lduncan@suse.com>
Signed-off-by: Chris Leech <cleech@redhat.com>
---
 drivers/infiniband/ulp/iser/iscsi_iser.c | 2 +-
 drivers/scsi/be2iscsi/be_iscsi.c         | 2 +-
 drivers/scsi/bnx2i/bnx2i_iscsi.c         | 2 +-
 drivers/scsi/cxgbi/libcxgbi.c            | 2 +-
 drivers/scsi/qedi/qedi_iscsi.c           | 2 +-
 drivers/scsi/qla4xxx/ql4_os.c            | 2 +-
 drivers/scsi/scsi_transport_iscsi.c      | 4 +++-
 include/scsi/scsi_transport_iscsi.h      | 7 ++++++-
 8 files changed, 15 insertions(+), 8 deletions(-)

diff --git a/drivers/infiniband/ulp/iser/iscsi_iser.c b/drivers/infiniband/ulp/iser/iscsi_iser.c
index bb9aaff92ca3..e1085b5fdbb3 100644
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
index 9971f32a663c..169a790950dd 100644
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
index abde60a50cf7..3620f4f04771 100644
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
index 6ed8ef97642c..08e2ebf6a06a 100644
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
index 7001d50a674c..b8e452009cf4 100644
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
index be69cea9c6f8..2f9348178450 100644
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
@@ -230,6 +230,8 @@ iscsi_create_endpoint(int dd_size)
 
 	ep->id = id;
 	ep->dev.class = &iscsi_endpoint_class;
+	if (shost)
+		ep->dev.parent = &shost->shost_gendev;
 	dev_set_name(&ep->dev, "ep-%d", id);
 	err = device_register(&ep->dev);
         if (err)
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index 34c03707fb6e..8ade6a03f85a 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -287,6 +287,10 @@ struct iscsi_cls_session {
 #define iscsi_session_to_shost(_session) \
 	dev_to_shost(_session->dev.parent)
 
+/* endpoints might not have a parent host (iSER) */
+#define iscsi_endpoint_to_shost(_ep) \
+	dev_to_shost(&_ep->dev)
+
 #define starget_to_session(_stgt) \
 	iscsi_dev_to_session(_stgt->dev.parent)
 
@@ -462,7 +466,8 @@ extern void iscsi_put_conn(struct iscsi_cls_conn *conn);
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
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230506232930.195451-3-cleech%40redhat.com.
