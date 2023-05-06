Return-Path: <open-iscsi+bncBCYMVIPVXQMBB5WF3ORAMGQEEOQVK2I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id A13096F94F6
	for <lists+open-iscsi@lfdr.de>; Sun,  7 May 2023 01:30:00 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id 46e09a7af769-6a5f602a905sf1913386a34.3
        for <lists+open-iscsi@lfdr.de>; Sat, 06 May 2023 16:30:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1683415799; cv=pass;
        d=google.com; s=arc-20160816;
        b=MGPlKbG1B++UHQ22vz9pHnhHljQjtvP8Nl0A63Kd0yLYGNzaXqwod817Xw7t0ue5b9
         KTNv4pjSdylYNBJb4TY6x9kzu4rRGYckAYwAHoPtyqUCt1LSaDvvK2CZLcqV7jM9uSKj
         Q1lZvvIW9GX6XzYINmfK3NTOHHDjVXmbOLLckSlsUgDH8Wxfwlkumz61EFa2Kucv/MZr
         qe0j5ruUGJBsQFFwEWXeRcaweQg6pRgbbipviR7NlqwEIRpw+m/Lq0ip+Yg8wvs1T4Ow
         M5yE597LZu5RrSPryeqO/6N/nfocZjogwuByBOTRqSs9I1Dat6hFTiJnbcNNJTEq+2Ic
         6U9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=l6QaWrSk0jCHh89twdjH6rC+wEQbM5BLYXzKPq32zjQ=;
        b=A70ePC02kESXyaqvGKCYFbGlpmmeYy48S/FY7yZ/kHVHuYue9C9pPCRiGm/phdfhzA
         GiQu9E4GT3k45+1BoD3jgLVe5WXG8YpN48oiiJlHudG7y8q960I+n68yAPKrf9s6yTOb
         FKj1ScwxE0D6dP1LLRAvgOmO+SLJgWPAdT2lzT31UyO1uBli5iQ7U3C8K4Pp1inWLSmz
         6ZhiPZQB99rJJSRPR5ds0yeIp0ty8WXD8CwwiwYmMNcGV2LvHvVrufGZqVjOC/oVeltR
         1AXpdAtI/aCsh4mkHS/PuhjnhG8V8bbSm/RlZ1Pms3T0JaOjjSRswXDoWYNNWPAo4LzK
         npOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Dz6W/z/7";
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1683415799; x=1686007799;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l6QaWrSk0jCHh89twdjH6rC+wEQbM5BLYXzKPq32zjQ=;
        b=TSm3jkmTtF2R9qqMhla0nv/YSxzd++WOZ9fKXMDdwAoLGWruMOy+PdVLFj2c9W/7ue
         T/0O2ZkonQGHZOAW3p2RusmpuIQ6pDpGVbEg+zA/3RttMuvtZ6qnreqiaiErNLYFnQVs
         0fVUpeAZMQd5/wlyQ01NDw1KIT1LXs88z1RnewgeWhR6kjE4V7843b1xoK7W6g3A6Pxw
         uvznCE9qPKsQ2AII7rK/PHbMX+AQRQbHvghguZQLw11c8U2QlUCVeWDpy1h8dfG/jjhu
         LaGZxqSGkJ/HOQJ7GklkKovTD+AcZh4fj6MdPPk2UYOcVogHkkbSbWFNMxSTcAgs6153
         dTmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683415799; x=1686007799;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l6QaWrSk0jCHh89twdjH6rC+wEQbM5BLYXzKPq32zjQ=;
        b=NuCUplm+NZJ3wW450omaoutdxkgXAQ9xeFtIz9Y8RpXJlaeeIdcQgqrQAuBjM/4T30
         Xcuk3+CM82gc55vW3n1bt0NkOAUWohL+p8l/lopKLr6ltzqOlDZ2Xzn3u/jwJpv9Pn9g
         +mfiDgYcYBSuTl35UcOzP6eN7g5GRcTPSZSbWexQenbN1hkp87T8Xo/uFwEo5xjkco57
         r/nbLoJHuXbWiRAUqBZyPhE+iWW8s9QgwxD8Cyv7Bg7PFnw+v/LTWeKXD4FLEuEVXNhZ
         7O705EVnplucqhwoJroA2SMPRd8nfpLN3b9PDqyaMLXY1JaC596mdtpVzWjERovSrxx0
         1Wvg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AC+VfDzmR2mLGFPNL93oryyCX3ywjipRGrbY4ZaMMHX7qyUFvz0f5KNM
	U3r2rXx9MayZMI0VC7ZyTnI=
X-Google-Smtp-Source: ACHHUZ6TdrGKyMnA1iU2PbMTFoiEamumTjTxcgjNS/zdm4PeEbgGgbK8NVQMqWd69VKsfDc/Ulq93A==
X-Received: by 2002:a05:6830:2084:b0:6a5:d944:f1d9 with SMTP id y4-20020a056830208400b006a5d944f1d9mr1498933otq.7.1683415799136;
        Sat, 06 May 2023 16:29:59 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:d111:b0:192:954d:4ae1 with SMTP id
 e17-20020a056870d11100b00192954d4ae1ls3737946oac.0.-pod-prod-gmail; Sat, 06
 May 2023 16:29:57 -0700 (PDT)
X-Received: by 2002:a05:6870:1947:b0:18b:1d1a:87bc with SMTP id m7-20020a056870194700b0018b1d1a87bcmr2725708oak.10.1683415797620;
        Sat, 06 May 2023 16:29:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1683415797; cv=none;
        d=google.com; s=arc-20160816;
        b=R5NV6PW2N8aJE79sjcykcDzXRqF2s8mZBHABBJY8IgZExQIcmoeXNLp3nVMFeSzECM
         iM2n/HbWKJNRQQdSRpIsQ5vBoNwItXgQPsupPD3eL22WTcgbSmnty3n0p35IzYSkkjyq
         5AO8LgDm+15+nXbKuykR6j1aGvMYQ2gRVbavcWSyf6OJQivFhZZ+nW4LfwIVcnAYZt7K
         Z2/yDOkPCbxftdrtEcSgzDKTbBy4tguJMeBPWSFQdsMzuYbSyIHsju4vfcDoujsZ+wG9
         zM/DdxiDiIUO3HmnLOcTbdmmWDZGrWFFmyWDJm513CYoMnVp3AHhsbZmf9A9W8u+iIS5
         QK6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hOHSraviY9mZliuyISn1d0pP58ToTj0Cf77c0+s6vA8=;
        b=Dd+u4x2ammAKadPhQtNcV7y3HwQPp2hhyQ0GrAjgnINDxZq5n69G0b3Ak9jrqf14tf
         pbfv81WZ+Zie+sw2qXVWkLspZVrjR+t4tUenFLkVVktqF8K4fIpLtXujqsT7vZji0GEw
         WjcxrIWyGCEqt08wX3phHgqKGg5wFyTEyVJ7Owp0Yg3rAgaFyjDd6cbfX9vrkJ4FO3vr
         os9yCtYjvgGXLJ/OBcjN4zl7Ic8gbCJN6X6+gTJlAdPgg5YFQ0GiQaT80LFZWSwfZPqc
         D62jaK1+lFiTumtfpYPsH7DbvgPTdUuV2TVSWUS44ZBnKy4IUbgVdsOj+jzHex12Y01R
         B3Pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Dz6W/z/7";
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by gmr-mx.google.com with ESMTPS id lw13-20020a0568708e0d00b00187820f810dsi831329oab.5.2023.05.06.16.29.57
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 May 2023 16:29:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-149-FTF0SyUxO3OMLl5eyfJ9lg-1; Sat, 06 May 2023 19:29:55 -0400
X-MC-Unique: FTF0SyUxO3OMLl5eyfJ9lg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 632D4811E7C;
	Sat,  6 May 2023 23:29:55 +0000 (UTC)
Received: from toolbox.redhat.com (unknown [10.2.16.10])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C0C5F35443;
	Sat,  6 May 2023 23:29:54 +0000 (UTC)
From: Chris Leech <cleech@redhat.com>
To: Lee Duncan <lduncan@suse.com>,
	linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	netdev@vger.kernel.org
Cc: Chris Leech <cleech@redhat.com>
Subject: [PATCH 03/11] iscsi: sysfs filtering by network namespace
Date: Sat,  6 May 2023 16:29:22 -0700
Message-Id: <20230506232930.195451-4-cleech@redhat.com>
In-Reply-To: <20230506232930.195451-1-cleech@redhat.com>
References: <20230506232930.195451-1-cleech@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="Dz6W/z/7";
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

This makes the iscsi_host, iscsi_session, iscsi_connection, iscsi_iface,
and iscsi_endpoint transport class devices only visible in sysfs under a
matching network namespace.  The network namespace for all of these
objects is tracked in the iscsi_cls_host structure.

Signed-off-by: Lee Duncan <lduncan@gmail.com>
Reviewed-by: Hannes Reinecke <hare@suse.de>
Signed-off-by: Chris Leech <cleech@redhat.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 127 ++++++++++++++++++++++++----
 include/scsi/scsi_transport_iscsi.h |   1 +
 2 files changed, 113 insertions(+), 15 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 2f9348178450..814aef6da4a3 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -181,9 +181,34 @@ static void iscsi_endpoint_release(struct device *dev)
 	kfree(ep);
 }
 
+static struct net *iscsi_host_net(struct iscsi_cls_host *ihost)
+{
+	return ihost->netns;
+}
+
+static struct net *iscsi_endpoint_net(struct iscsi_endpoint *ep)
+{
+	struct Scsi_Host *shost = iscsi_endpoint_to_shost(ep);
+	struct iscsi_cls_host *ihost;
+
+	if (!shost)
+		return &init_net;
+	ihost = shost->shost_data;
+	return iscsi_host_net(ihost);
+}
+
+static const void *iscsi_endpoint_namespace(const struct device *dev)
+{
+	struct iscsi_endpoint *ep = iscsi_dev_to_endpoint(dev);
+
+	return iscsi_endpoint_net(ep);
+}
+
 static struct class iscsi_endpoint_class = {
 	.name = "iscsi_endpoint",
 	.dev_release = iscsi_endpoint_release,
+	.ns_type = &net_ns_type_operations,
+	.namespace = iscsi_endpoint_namespace,
 };
 
 static ssize_t
@@ -309,10 +334,26 @@ static void iscsi_iface_release(struct device *dev)
 	put_device(parent);
 }
 
+static struct net *iscsi_iface_net(struct iscsi_iface *iface)
+{
+	struct Scsi_Host *shost = iscsi_iface_to_shost(iface);
+	struct iscsi_cls_host *ihost = shost->shost_data;
+
+	return iscsi_host_net(ihost);
+}
+
+static const void *iscsi_iface_namespace(const struct device *dev)
+{
+	struct iscsi_iface *iface = iscsi_dev_to_iface(dev);
+
+	return iscsi_iface_net(iface);
+}
 
 static struct class iscsi_iface_class = {
 	.name = "iscsi_iface",
 	.dev_release = iscsi_iface_release,
+	.ns_type = &net_ns_type_operations,
+	.namespace = iscsi_iface_namespace,
 };
 
 #define ISCSI_IFACE_ATTR(_prefix, _name, _mode, _show, _store)	\
@@ -1566,6 +1607,7 @@ static int iscsi_setup_host(struct transport_container *tc, struct device *dev,
 
 	memset(ihost, 0, sizeof(*ihost));
 	mutex_init(&ihost->mutex);
+	ihost->netns = &init_net;
 
 	iscsi_bsg_host_add(shost, ihost);
 	/* ignore any bsg add error - we just can't do sgio */
@@ -1583,23 +1625,78 @@ static int iscsi_remove_host(struct transport_container *tc,
 	return 0;
 }
 
-static DECLARE_TRANSPORT_CLASS(iscsi_host_class,
-			       "iscsi_host",
-			       iscsi_setup_host,
-			       iscsi_remove_host,
-			       NULL);
+#define DECLARE_TRANSPORT_CLASS_NS(cls, nm, su, rm, cfg, ns, nslookup)	\
+struct transport_class cls = {						\
+	.class = {							\
+		.name = nm,						\
+		.ns_type = ns,						\
+		.namespace = nslookup,					\
+	},								\
+	.setup = su,							\
+	.remove = rm,							\
+	.configure = cfg,						\
+}
 
-static DECLARE_TRANSPORT_CLASS(iscsi_session_class,
-			       "iscsi_session",
-			       NULL,
-			       NULL,
-			       NULL);
+static const void *iscsi_host_namespace(const struct device *dev)
+{
+	struct Scsi_Host *shost = transport_class_to_shost(dev);
+	struct iscsi_cls_host *ihost = shost->shost_data;
+
+	return iscsi_host_net(ihost);
+}
+
+static DECLARE_TRANSPORT_CLASS_NS(iscsi_host_class,
+				  "iscsi_host",
+				  iscsi_setup_host,
+				  iscsi_remove_host,
+				  NULL,
+				  &net_ns_type_operations,
+				  iscsi_host_namespace);
+
+static struct net *iscsi_sess_net(struct iscsi_cls_session *cls_session)
+{
+	struct Scsi_Host *shost = iscsi_session_to_shost(cls_session);
+	struct iscsi_cls_host *ihost = shost->shost_data;
+
+	return iscsi_host_net(ihost);
+}
+
+static const void *iscsi_sess_namespace(const struct device *dev)
+{
+	struct iscsi_cls_session *cls_session = transport_class_to_session(dev);
+
+	return iscsi_sess_net(cls_session);
+}
+
+static DECLARE_TRANSPORT_CLASS_NS(iscsi_session_class,
+				  "iscsi_session",
+				  NULL,
+				  NULL,
+				  NULL,
+				  &net_ns_type_operations,
+				  iscsi_sess_namespace);
+
+static struct net *iscsi_conn_net(struct iscsi_cls_conn *cls_conn)
+{
+	struct iscsi_cls_session *cls_session = iscsi_conn_to_session(cls_conn);
+
+	return iscsi_sess_net(cls_session);
+}
+
+static const void *iscsi_conn_namespace(const struct device *dev)
+{
+	struct iscsi_cls_conn *cls_conn = transport_class_to_conn(dev);
+
+	return iscsi_conn_net(cls_conn);
+}
 
-static DECLARE_TRANSPORT_CLASS(iscsi_connection_class,
-			       "iscsi_connection",
-			       NULL,
-			       NULL,
-			       NULL);
+static DECLARE_TRANSPORT_CLASS_NS(iscsi_connection_class,
+				  "iscsi_connection",
+				  NULL,
+				  NULL,
+				  NULL,
+				  &net_ns_type_operations,
+				  iscsi_conn_namespace);
 
 struct iscsi_net {
 	struct sock *nls;
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index 8ade6a03f85a..d795e65a1f75 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -299,6 +299,7 @@ struct iscsi_cls_host {
 	struct request_queue *bsg_q;
 	uint32_t port_speed;
 	uint32_t port_state;
+	struct net *netns;
 };
 
 #define iscsi_job_to_shost(_job) \
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230506232930.195451-4-cleech%40redhat.com.
