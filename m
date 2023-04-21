Return-Path: <open-iscsi+bncBCYMVIPVXQMBBNVTRCRAMGQEW3LB7AI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAB06EA2F9
	for <lists+open-iscsi@lfdr.de>; Fri, 21 Apr 2023 07:06:00 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id e9e14a558f8ab-32a8c155f24sf26981685ab.0
        for <lists+open-iscsi@lfdr.de>; Thu, 20 Apr 2023 22:06:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1682053559; cv=pass;
        d=google.com; s=arc-20160816;
        b=WY+kNcrFQ5o44OJPIfJPsJXUKzDAPjbn84FhNeRRMV62jtzdsITOa8O1oqPwotoQVx
         Ymwu4KLdhYL+2dTz1inyy6yycr0OsSsy4wxI32gZtMSmP3t1s4AKmZjM5bkZrUo4cjyd
         Spd0qbZ4VgTFlB3gKjJ1G0AqMomvnRUGUvVBcuEEZADKdMmDx4U9CevkgniTeXHImC5L
         mO+VU5fWeEqPyE+Ad07lYQMz2cCGcXyJg8btSv2YkZrUjuUEJfMqUaD4wVwa+C5QG6mf
         eih+prlaRJgyASDkgcCl8nyRbfUT1sYbLPNMOyr1h2FBDVqh1jWHNy/fidDnaI/TbXRs
         upvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=UpaxsA2kSCz3daVyuuFngx22Szeo9KWN6hPozJRQISg=;
        b=a6lk7ytOIXjfAC3BAUgNqpeHyLl83qS+8qkxBZBtXDT/W7wpBN39RfqbQ53UrN+PEX
         QYDhHiqK8nyhygKcM4P7eyoaZwI/GGAQ+7z3MysaFbtgl8s1NvizN1/INVhvbA/+lXyD
         vEdeS7GmY4cGt5FMzvd7x/DC73wGrm4aNxG1V77xzoHi4L/P2CnIU/sO5qTd3UaqAyst
         +44ZX7d1zNojbDSLtugpxRYdaDeyoyTlre5V34TQmBeWTkSehSIqCU1RAss1zXYZjB8Y
         MbqGg91/rKUWb3Cq7dqOHGyuXr08gyKNRMA+2XOLa2RVM+6soyjBNPdkdxO0PxjCDJgF
         aCUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JQUOXzjp;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1682053559; x=1684645559;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UpaxsA2kSCz3daVyuuFngx22Szeo9KWN6hPozJRQISg=;
        b=b7tCZKNDf3HWK+iw2OK4bTPOzH04NovnTVCVmJLk46dqELaBc3HlYPf3/l/0hAnBFs
         hwBITEx7rBMFbAzlVlWbrhn781gPqa+88W4nR3t8wDhOaGLJIRLnWQTy4yCtVB1nXnkR
         jt7b5zzb33oCN/I0uNXk1xtdYfwrpGxweRBL6rViEEytN2Enu1WkYHVMlFZQCVbQ8ukz
         CEKZcUzFxaDEK1bNzNk5w0xZUmoS5395A9seh66jniTQs/9OF8gt3fTacilFXEbD0uUO
         PW5ITJ2KXR6i3NV/e+FBvqIUgrM/Bx3D8g7OUqDgbS2z8OXzG9sNF9jEJf98tsY3+CS2
         G43g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682053559; x=1684645559;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UpaxsA2kSCz3daVyuuFngx22Szeo9KWN6hPozJRQISg=;
        b=aXefocCx3P9C8NRNNbfiF4+WlHHcqZkzKbgAHPkjNIQyCaucFLsfeLKFewwjupnZ0a
         DM82kGJo1HZGsxHFSm40PDO7Ygsg5egO5eAAgtum7L/+OrnWDLyQYpRYjbvNprcR05KA
         IMKwaE9Ehkm7pOvSXW3BMd3J+kScQGBlVqxQXHZu6AjM4WkwQngvgHJgfAmwX7aRoRaE
         ozOqMDJG9pffeka21BmoHzWJbbj5Uh0gJrNbB531Fx8IeOWbzBHND08k1L8i/H+vlw1R
         d+pXmu5KJfewTQmpCpeVczTWZvTwhrAWq2Hcig2lEW4DW3UWDQ3MhZq1Oni6YyJwIr9V
         14Gg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AAQBX9fQyct1r5o7yEd1CAOlHu25kk/LDcPQvaU3o2LSj4ySf1zaTohb
	nwpLmZ3GFJhZUvHozI8PPF0=
X-Google-Smtp-Source: AKy350ZCaHvowoZHaymsK8tnUGOT8EQ69TiIuDAHJL2dORoutRbbjwqjn4ociiYX7dBjeVMouOsmjw==
X-Received: by 2002:a92:d305:0:b0:32a:9195:7374 with SMTP id x5-20020a92d305000000b0032a91957374mr2043261ila.1.1682053559287;
        Thu, 20 Apr 2023 22:05:59 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a6b:5a16:0:b0:760:b5e9:d6c1 with SMTP id o22-20020a6b5a16000000b00760b5e9d6c1ls772610iob.3.-pod-prod-gmail;
 Thu, 20 Apr 2023 22:05:57 -0700 (PDT)
X-Received: by 2002:a05:6602:58c:b0:763:9c39:88b6 with SMTP id v12-20020a056602058c00b007639c3988b6mr710950iox.1.1682053557819;
        Thu, 20 Apr 2023 22:05:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1682053557; cv=none;
        d=google.com; s=arc-20160816;
        b=Wv8kMVtIcqQek+HXv/XOz/jUEyQrRmD67YHRXjNmNcjrvHnf+y+tKZ7xEBSDE4DR9s
         tePPz8TnYIBIaA2/6HNhGE+HhpslS6d/fAc5ChCrAlcc6FCEZmWZ2tpHAodZc03tV3X7
         y7cqqzFQAL3FgAlII2teNKZ2Na4Dl2Cj2GoTJlfnHH/Jd4jwcz0pAIoZLMdDzn8lL6mz
         GJb1AZJRyyZUk3aCQNPSxNSrv/zeYxlzHuZWMdeSd0O8p1eHwhX2XH4szGJFDaExFMky
         2KAkmhLW5BAwuGFaH8t6AO+Irno/3baOk9OPEYjIAXh/rEtNXnHkUVJ8+SE4QiW8dpsl
         f9YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=OW3s0NvOmowyB3QXPhc3i2XN5BrOgFoO4koUc1e5NWo=;
        b=Cg1qYO9JPI4QunyP3MMUOzjf+P6AMYZNVC32MZMIuePpV062Cs23KTB4sj4bwsahoH
         Ldz/lI8+Q/1XfaNrgz3ZmqLPwuib4QFEawPt+qhn/Vauy3zbuoklHEtfCVtIK3vCqrL8
         0jStxBr2czX4HOQAUZLHWz5k1PR2+6DuwqTDdWvbxgo+V2kvBvAqukWDdEOVB0Z+e6dg
         m3shxW52nnSYOGbflY/5jkqAHfwhCtU1mCiSUInFo7KpvkXUOxu92DnjmuJRPHu9pOpN
         QhCy59/X1hPUPQIadkOMN0qzXuneIvE6DkPtXS/IOeJCK/ma2t0WLkpY5eshQMhjNOGS
         YZ/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JQUOXzjp;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id cx18-20020a056638491200b003e7efb1d848si343868jab.3.2023.04.20.22.05.57
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Apr 2023 22:05:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-82-_Fx-ojTTPBWmMfh8oaCVnw-1; Fri, 21 Apr 2023 01:05:55 -0400
X-MC-Unique: _Fx-ojTTPBWmMfh8oaCVnw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BB3FA185A790;
	Fri, 21 Apr 2023 05:05:54 +0000 (UTC)
Received: from localhost.redhat.com (unknown [10.2.16.204])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3251D4020BF1;
	Fri, 21 Apr 2023 05:05:54 +0000 (UTC)
From: Chris Leech <cleech@redhat.com>
To: Lee Duncan <leeman.duncan@gmail.com>,
	linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com
Cc: Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>
Subject: [PATCH] iscsi iser: direct network namespace support for endpoints
Date: Thu, 20 Apr 2023 22:05:20 -0700
Message-Id: <20230421050521.49903-3-cleech@redhat.com>
In-Reply-To: <20230421050521.49903-1-cleech@redhat.com>
References: <20230420164232.GA27885@localhost>
 <20230421050521.49903-1-cleech@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=JQUOXzjp;
       spf=pass (google.com: domain of cleech@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
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

Split endpoint creation into host-bound and with a specified namespace,
for iSER's unique use of enpoint objects + virtual host-per-session.

This is much like was done with sessions already for iscsi_tcp.

Signed-off-by: Chris Leech <cleech@redhat.com>
---
 drivers/infiniband/ulp/iser/iscsi_iser.c |  6 ++--
 drivers/scsi/scsi_transport_iscsi.c      | 38 +++++++++++++++++++-----
 include/scsi/scsi_transport_iscsi.h      |  6 ++++
 3 files changed, 40 insertions(+), 10 deletions(-)

diff --git a/drivers/infiniband/ulp/iser/iscsi_iser.c b/drivers/infiniband/ulp/iser/iscsi_iser.c
index 49fbfeb49b34..ecb8aba1cee9 100644
--- a/drivers/infiniband/ulp/iser/iscsi_iser.c
+++ b/drivers/infiniband/ulp/iser/iscsi_iser.c
@@ -813,7 +813,7 @@ static int iscsi_iser_get_ep_param(struct iscsi_endpoint *ep,
  * Return: iscsi_endpoint created by iscsi layer or ERR_PTR(error)
  *         if fails.
  */
-static struct iscsi_endpoint *iscsi_iser_ep_connect(struct Scsi_Host *shost,
+static struct iscsi_endpoint *iscsi_iser_ep_connect(struct net *net,
 						    struct sockaddr *dst_addr,
 						    int non_blocking)
 {
@@ -821,7 +821,7 @@ static struct iscsi_endpoint *iscsi_iser_ep_connect(struct Scsi_Host *shost,
 	struct iser_conn *iser_conn;
 	struct iscsi_endpoint *ep;
 
-	ep = iscsi_create_endpoint(shost, 0);
+	ep = iscsi_create_endpoint_net(net, 0);
 	if (!ep)
 		return ERR_PTR(-ENOMEM);
 
@@ -1027,7 +1027,7 @@ static struct iscsi_transport iscsi_iser_transport = {
 	/* recovery */
 	.session_recovery_timedout = iscsi_session_recovery_timedout,
 
-	.ep_connect             = iscsi_iser_ep_connect,
+	.ep_connect_net         = iscsi_iser_ep_connect,
 	.ep_poll                = iscsi_iser_ep_poll,
 	.ep_disconnect          = iscsi_iser_ep_disconnect
 };
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index b8e451a8c76c..d41b4c1ad611 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -190,6 +190,9 @@ static struct net *iscsi_endpoint_net(struct iscsi_endpoint *ep)
 {
 	struct Scsi_Host *shost = iscsi_endpoint_to_shost(ep);
 	struct iscsi_cls_host *ihost;
+
+	if (ep->netns)
+		return ep->netns;
 	if (!shost)
 		return &init_net;
 	ihost = shost->shost_data;
@@ -228,7 +231,7 @@ static struct attribute_group iscsi_endpoint_group = {
 };
 
 struct iscsi_endpoint *
-iscsi_create_endpoint(struct Scsi_Host *shost, int dd_size)
+__iscsi_create_endpoint(struct Scsi_Host *shost, int dd_size, struct net *net)
 {
 	struct iscsi_endpoint *ep;
 	int err, id;
@@ -256,6 +259,8 @@ iscsi_create_endpoint(struct Scsi_Host *shost, int dd_size)
 	ep->dev.class = &iscsi_endpoint_class;
 	if (shost)
 		ep->dev.parent = &shost->shost_gendev;
+	if (net)
+		ep->netns = net;
 	dev_set_name(&ep->dev, "ep-%d", id);
 	err = device_register(&ep->dev);
         if (err)
@@ -283,8 +288,21 @@ iscsi_create_endpoint(struct Scsi_Host *shost, int dd_size)
 	kfree(ep);
 	return NULL;
 }
+
+struct iscsi_endpoint *
+iscsi_create_endpoint(struct Scsi_Host *shost, int dd_size) {
+	return __iscsi_create_endpoint(shost, dd_size, NULL);
+}
+
 EXPORT_SYMBOL_GPL(iscsi_create_endpoint);
 
+struct iscsi_endpoint *
+iscsi_create_endpoint_net(struct net *net, int dd_size) {
+	return __iscsi_create_endpoint(NULL, dd_size, net);
+}
+
+EXPORT_SYMBOL_GPL(iscsi_create_endpoint_net);
+
 void iscsi_destroy_endpoint(struct iscsi_endpoint *ep)
 {
 	sysfs_remove_group(&ep->dev.kobj, &iscsi_endpoint_group);
@@ -3279,10 +3297,10 @@ static int iscsi_if_ep_connect(struct net *net,
 	struct Scsi_Host *shost = NULL;
 	int non_blocking, err = 0;
 
-	if (!transport->ep_connect)
-		return -EINVAL;
-
 	if (msg_type == ISCSI_UEVENT_TRANSPORT_EP_CONNECT_THROUGH_HOST) {
+		if (!transport->ep_connect)
+			return -EINVAL;
+
 		shost = iscsi_host_lookup(net,
 					ev->u.ep_connect_through_host.host_no);
 		if (!shost) {
@@ -3292,11 +3310,17 @@ static int iscsi_if_ep_connect(struct net *net,
 			return -ENODEV;
 		}
 		non_blocking = ev->u.ep_connect_through_host.non_blocking;
-	} else
+		dst_addr = (struct sockaddr *)((char*)ev + sizeof(*ev));
+		ep = transport->ep_connect(shost, dst_addr, non_blocking);
+	} else {
+		if (!transport->ep_connect_net)
+			return -EINVAL;
+
 		non_blocking = ev->u.ep_connect.non_blocking;
+		dst_addr = (struct sockaddr *)((char*)ev + sizeof(*ev));
+		ep = transport->ep_connect_net(net, dst_addr, non_blocking);
+	}
 
-	dst_addr = (struct sockaddr *)((char*)ev + sizeof(*ev));
-	ep = transport->ep_connect(shost, dst_addr, non_blocking);
 	if (IS_ERR(ep)) {
 		err = PTR_ERR(ep);
 		goto release_host;
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index bb6734e900e0..a540e085de8d 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -127,6 +127,9 @@ struct iscsi_transport {
 	struct iscsi_endpoint *(*ep_connect) (struct Scsi_Host *shost,
 					      struct sockaddr *dst_addr,
 					      int non_blocking);
+	struct iscsi_endpoint *(*ep_connect_net) (struct net *net,
+					      struct sockaddr *dst_addr,
+					      int non_blocking);
 	int (*ep_poll) (struct iscsi_endpoint *ep, int timeout_ms);
 	void (*ep_disconnect) (struct iscsi_endpoint *ep);
 	int (*tgt_dscvr) (struct Scsi_Host *shost, enum iscsi_tgt_dscvr type,
@@ -321,6 +324,7 @@ struct iscsi_endpoint {
 	struct device dev;
 	int id;
 	struct iscsi_cls_conn *conn;
+	struct net *netns;		/* used if there's no parent shost */
 };
 
 struct iscsi_iface {
@@ -477,6 +481,8 @@ extern void iscsi_unblock_session(struct iscsi_cls_session *session);
 extern void iscsi_block_session(struct iscsi_cls_session *session);
 extern struct iscsi_endpoint *iscsi_create_endpoint(struct Scsi_Host *shost,
 						    int dd_size);
+extern struct iscsi_endpoint *iscsi_create_endpoint_net(struct net *net,
+						    int dd_size);
 extern void iscsi_destroy_endpoint(struct iscsi_endpoint *ep);
 extern struct iscsi_endpoint *iscsi_lookup_endpoint(struct net *net,
 						    u64 handle);
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230421050521.49903-3-cleech%40redhat.com.
