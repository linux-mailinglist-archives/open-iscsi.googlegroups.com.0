Return-Path: <open-iscsi+bncBCYMVIPVXQMBBNVTRCRAMGQEW3LB7AI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id B98B46EA2FA
	for <lists+open-iscsi@lfdr.de>; Fri, 21 Apr 2023 07:06:00 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id af79cd13be357-74aa39dac03sf103243685a.3
        for <lists+open-iscsi@lfdr.de>; Thu, 20 Apr 2023 22:06:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1682053559; cv=pass;
        d=google.com; s=arc-20160816;
        b=qP2GJJQb6YyOOVl2KWnwTV9PJCxcVkV2C2uxpw3AdxuSsJKQsjszX+pnGnFISMVYZy
         q6BcN2wczD4x32mi2blsWGJ7IDFPjTwnAmXmS2Vcx/p8smey2m0Yh0ZWtvWLHXmHDyHV
         kzmKuBKGEpFBUr2Dg6UyDx1QbQ28PFH38CNim9fjK/00yTm0moTzneLf7q80ArT68ejz
         ZMgOe6ZaAamAb4nEC5TeCssvPkKq02DvYShGnsBj8TK4mv80Mm1YdcSWB76IR+ittobb
         p7nTFiky4PWvzrFQPUf1+QaxkbZQYDRWde80pozRZ7RILVS8fwqwgAUe+YSQxhqO0x2D
         Cw/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=tqp7ydWHjo+KRu/72r2BhDgSoRkxsoGHC6n1QORbPXM=;
        b=l7JJFr1iERDGF1Xna0ezbydd3YpxN+DtfFrPnvhLdpo70LktXabJw3sfGMV4HjUUOA
         2YHLCM4ftP8MLtZjwyoeb2w4Aq/yMhtVtNrjVhsa/gjSd6unIfFDt3HDYtEtfAjEXlPS
         zIbMj+QfUhfJbhUxzgQK2UbPhPPShC1FA4KaYURJh3X7ZYI41L0N4bOBFevWa2CstrQm
         Jx6fqLHdeJpmAXr7sm4H74SG1nVfqwdfUsE0GVuPYAi2K2JYuI4PFgEzgykp2/Z2uoBo
         euPanw7rnQVBLnFlZIYqruEQU3iDS30Hz/z4ATGIn2+8the5yoNyzEbSxlpPaXSF86ty
         RH1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="h/eJXyAh";
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1682053559; x=1684645559;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tqp7ydWHjo+KRu/72r2BhDgSoRkxsoGHC6n1QORbPXM=;
        b=fBt5lhCI9eIH/FFKPUwkNWiM6yDZnoxPz6ZdEnH9/yJtHuN3ux/7xX86TG5M+dEJtb
         yScVgZ5J5eTXPwVfuOzYdog4OMzWMWglSs3DdqZAcqQm5bACzuAw3ZZXHVBfVDuuAODR
         AWKYmwoSngU/nBNJoX53N1nBItiOoIlHc3uNx3DT1arC5/xGNsCRS066IKYOkBt4y6Ge
         48nb68DNorDQHRJlvuR8lm5nJ4sPsirRmPVpy8kNXL42SaCA2L3K4zCPnBLM09y+zjAd
         WE5TkKfavnUEMWqw/dREn7u/DrMAfdwEdXy7dabKeSiVoXAmUegpXzW04wqJC8YD9AQS
         Qg5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682053559; x=1684645559;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tqp7ydWHjo+KRu/72r2BhDgSoRkxsoGHC6n1QORbPXM=;
        b=TCqX7avgqXlp7Ox+i3eYooj8vIzyPQ2P+FwnwABF2KTpD9STYAZCNqt2YfWD6lrM4m
         hG5mtgucziSBwdkz1d366w2Bm3AwJw9wLS0v1yTOpLE76iRbyxZKLgDX3SqkQCZbZQNT
         lFhTXS+WKDxcoMQ1KFlCLYMlmHpMD2VAz1PZFSpfqlt5yx2cMem2kzfZrUmC12MVVZH3
         6BpyWYlChZr4JW1nzYkUpdj/HIDHzbUQWANZUJdH3bB+0ZmIUbbej9QV+lqp37ANoKkh
         XEN8vEOycoWwaawLbniMwo4VbMtD5ZCLwd1F12xuyXzc4mg/IuPTelYt8QVpR0u8b72U
         2VJw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AAQBX9eoESdgDccvBzetpJJUS7y3S+Kr0x4sUEd3pi/UsO2NgUDwcRH+
	zHarwN5FePc8dSBTRf1DGvE=
X-Google-Smtp-Source: AKy350Z6wzuQ2Rtqja1mT1c7AYZE3Aee0bJLpttLpo/wDW36rPKk+XV/qf390Tw+C51KG3wAbKt7GA==
X-Received: by 2002:ac8:5d8d:0:b0:3ef:3ead:149 with SMTP id d13-20020ac85d8d000000b003ef3ead0149mr1155326qtx.13.1682053559499;
        Thu, 20 Apr 2023 22:05:59 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:622a:4d85:b0:3e1:c0bd:797c with SMTP id
 ff5-20020a05622a4d8500b003e1c0bd797cls3929453qtb.9.-pod-prod-gmail; Thu, 20
 Apr 2023 22:05:58 -0700 (PDT)
X-Received: by 2002:a05:622a:1184:b0:3e6:38cf:fc93 with SMTP id m4-20020a05622a118400b003e638cffc93mr6633233qtk.19.1682053558097;
        Thu, 20 Apr 2023 22:05:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1682053558; cv=none;
        d=google.com; s=arc-20160816;
        b=1KweZ72azj61HAlgahijWcftes9tqusV6311xAQ88Jbdx6pGZOvcxhPkrgWtOFp8kI
         duhCgOSmP9K7pUS8CX2M1kBqkAgDedmzBiJ9bStZBsB9+P1jlvdLVqUJx3FQwlIZt5MU
         qS64RjRsRcZcaJEs7aNdUhbbuA8LZ0H2ZZtHr4lIKFWP1XW2hAk3ctb+xWUPzqLCTwLr
         VU+8/VduARBeW1A5oglmYKAT2cujCd/aqPlNvtu4ocjaq3WQyHMRGLmFRX/9Ue/NyvvC
         33ANFXS+glR8PLIIouFMyiJ8w0hzIlnRYXWgWJ+axeymchOTh45n1jHnXyjNwaCR9Evq
         Eq6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=50GPcrWZS0LRGuULqlAbl1KOy4D8eYkSmtRPN+fm0h8=;
        b=VvtuEz1T8BLwwXPz+9S66ak786MNQYXiaXVTT29gbumJ+b/+LXqs4c9kWJfQ7KOi6c
         pI4Vf9nyASBT7RGRQV3ernIxx/gupnDtSk03RCdv3iJ98Mtyhe72dGcXq82RsjMO9vg5
         x8iMLRkxvBZ7n4Zx3UBmEgFIuoo4LZusHGwErM+4QoFcVgg5sdbOG16c3UmxjnMuuF/8
         bZ0rttAUMLGPvKK3sMpPv7pMbZgKWN/SOH5vjHd/hv9NSVDlRNBiytzdZ2w09dy2J/Kk
         ghaPlZmXNbDqCa8FPrveuqL7pyxylI1W0JccJmO7WJavc+WbM7zDqgPLgnW1j/zWoDSQ
         4NiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="h/eJXyAh";
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by gmr-mx.google.com with ESMTPS id fb12-20020a05622a480c00b003ef46e5143dsi234224qtb.3.2023.04.20.22.05.58
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Apr 2023 22:05:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-671-ck5vV_jhNAaV2HPrlrxmIA-1; Fri, 21 Apr 2023 01:05:54 -0400
X-MC-Unique: ck5vV_jhNAaV2HPrlrxmIA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0C730800B35;
	Fri, 21 Apr 2023 05:05:54 +0000 (UTC)
Received: from localhost.redhat.com (unknown [10.2.16.204])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7994E4020BED;
	Fri, 21 Apr 2023 05:05:53 +0000 (UTC)
From: Chris Leech <cleech@redhat.com>
To: Lee Duncan <leeman.duncan@gmail.com>,
	linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com
Cc: Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>
Subject: [PATCH] iscsi iser: fix iser, allow virtual endpoints again
Date: Thu, 20 Apr 2023 22:05:19 -0700
Message-Id: <20230421050521.49903-2-cleech@redhat.com>
In-Reply-To: <20230421050521.49903-1-cleech@redhat.com>
References: <20230420164232.GA27885@localhost>
 <20230421050521.49903-1-cleech@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="h/eJXyAh";
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

iSER creates endpoints before hosts and sessions, so we need to keep
compatibility with virtual device paths and not always expect a parent
host.

Signed-off-by: Chris Leech <cleech@redhat.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 9 ++++++---
 include/scsi/scsi_transport_iscsi.h | 3 ++-
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 41f0de2165e0..b8e451a8c76c 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -189,8 +189,10 @@ static struct net *iscsi_host_net(struct iscsi_cls_host *ihost)
 static struct net *iscsi_endpoint_net(struct iscsi_endpoint *ep)
 {
 	struct Scsi_Host *shost = iscsi_endpoint_to_shost(ep);
-	struct iscsi_cls_host *ihost = shost->shost_data;
-
+	struct iscsi_cls_host *ihost;
+	if (!shost)
+		return &init_net;
+	ihost = shost->shost_data;
 	return iscsi_host_net(ihost);
 }
 
@@ -252,7 +254,8 @@ iscsi_create_endpoint(struct Scsi_Host *shost, int dd_size)
 
 	ep->id = id;
 	ep->dev.class = &iscsi_endpoint_class;
-	ep->dev.parent = &shost->shost_gendev;
+	if (shost)
+		ep->dev.parent = &shost->shost_gendev;
 	dev_set_name(&ep->dev, "ep-%d", id);
 	err = device_register(&ep->dev);
         if (err)
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index d233618a17de..bb6734e900e0 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -293,8 +293,9 @@ struct iscsi_cls_session {
 #define iscsi_session_to_shost(_session) \
 	dev_to_shost(_session->dev.parent)
 
+/* endpoints might not have a parent host (iSER) */
 #define iscsi_endpoint_to_shost(_ep) \
-	dev_to_shost(_ep->dev.parent)
+	dev_to_shost(&_ep->dev)
 
 extern struct net *iscsi_sess_net(struct iscsi_cls_session *session);
 
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230421050521.49903-2-cleech%40redhat.com.
