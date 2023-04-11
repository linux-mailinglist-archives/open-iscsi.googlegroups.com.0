Return-Path: <open-iscsi+bncBCYMVIPVXQMBBJ6Q2KQQMGQE6LDZ5UY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2576DCE6E
	for <lists+open-iscsi@lfdr.de>; Tue, 11 Apr 2023 02:22:02 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id c16-20020a0cd610000000b005a9cf5f609esf3393588qvj.15
        for <lists+open-iscsi@lfdr.de>; Mon, 10 Apr 2023 17:22:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1681172520; cv=pass;
        d=google.com; s=arc-20160816;
        b=nYiI4WeR9D5DoSAXir0VjG6qYFoYvXTb5nkenGdyiSZiaCnxGj+jHTZ6rt4QoyaDMa
         MfuvVCxmt/Fuuo3v8gGclUP7Osgd07EgNhlzwKZWYrfmWvlNDD4I2AanyeOJVTgSFM31
         js04U8WYbQ6Y9++evkiCnRwURDgCKXomjDsX9vc3wsbtVh1GRyVdhbMYdS1SJTETM9HM
         KB/zLTKwaei05Q90grMt+fCcXP4ypEqLs+xdqTT2Jqvcj3Iw52rbu9wvtZuA1KIRVQbv
         biXp629B39nGrYP19t2e5NiOjFmy4mfCn4ZOlGaMeO5x7RkM5ri+6z3CB4qwJG2Z8V5T
         aKaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=d8OBRlRgX7VMsKerc/5vV3OUADMR1405yeUciPic4lc=;
        b=s21r0eqw2A76gdN4+VKwzKfr+nPTeqPmS1ze8/HAk5vwJdBjpXIx+y5Hx/KDQC68cG
         A4/0bQO7JoqCjzC3BVkBR8EXnUopDItf/TYBFJMTrDz5TU1q9e1TIIauGgJ3goIK+BD0
         K+EqIQ/qob74JG7gnBYDvOLgEWDo3EyMHLOZl7E6z1+bCxsGrq5FxawwBgIbtjPMOXHt
         /+TvoUsXPzEZmr2VFMHuvAsNRsIBRcObxkW/ILO6aLPmkc308OPYMPmX1Q9eceFWL56F
         Vmlc7pEZKaUaodke7dmd3nIlPU6jRpgPTEOQUWeHa4QMoJtgxxuyckMhepfiwhKjvegG
         1/FA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XO9n1I1d;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1681172520;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d8OBRlRgX7VMsKerc/5vV3OUADMR1405yeUciPic4lc=;
        b=EX//nryusNJL0CnOs70XXa3MxMFFCauI/NpSEe7WIbSi1ib7tGw4+WlCHB8oS+A9bQ
         InW6uMXo1AEVaP5av20vr0S7RJX6hYBrBuSDmVyx36P40/Kbeor4M4GmNThl/M+8QYeb
         2hGSyTmiLC8/CeZc3nFyKT058QtZC4wNIGHWbHpY8+T6xSEmCMIskC92S3ZD0Dx8wHkB
         cyvbiJOCok1qSffnkiOISL0B/Qilq5tiPNd1oCYgOc3ZX33vFwHEBuXJQRDN9hrfTCST
         QfDfHTF9kfLiTzWsajdCPK+o6MkNwNYrnNj4HVnZZ+eImLB/bWausxuS4IQp8uXc7JEK
         6kOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681172520;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=d8OBRlRgX7VMsKerc/5vV3OUADMR1405yeUciPic4lc=;
        b=mvHZp5Vz3AWDHC7pKaeBEmFbN/2rs3ZbPNLVZpLQrFCMyMdb1Mnp5WjyQKQtNmYhVE
         MBUjwpV47MOP9Y87McEfYq/6xoSgxsS7Ou8FVau+Oi5RlX7PnocM6S6J8fD+9va2uSXl
         ddkZPRkWouiA3RLLI+GVWdFDqc8T4CxQv5WAoiG/iUpCnzmAC0/CbbM/UzvLimMUbqbB
         kDygzO4pEWnw/ciIjEc9t6e/dlDgs/3TSl+5nwGsSWPoI9iOoMOfhcknTnBAYL5xcKnV
         Eychjejpd+rcOatofpi5KNET5exLYYn4YigdC1pEeYWoKNmHUCUAAGOJVZCBKY1ix2yK
         DjLA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AAQBX9fRouGYszqEJDanoOFdQHSta3PyEZHKuwyZuqpZmfRR/WCABlrX
	k4FzjYq+12B0H/p3+P+A1w8=
X-Google-Smtp-Source: AKy350YnWc9DtK0Xk9nR1Bq1GV1v76kVAYp2JAHRnFC1GOLisa0ktQtkRCjtt27/R8mgbMHJlj6lFQ==
X-Received: by 2002:a05:620a:1a24:b0:746:88d4:820 with SMTP id bk36-20020a05620a1a2400b0074688d40820mr3970572qkb.10.1681172520613;
        Mon, 10 Apr 2023 17:22:00 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:c3c9:0:b0:56e:9b27:727c with SMTP id p9-20020a0cc3c9000000b0056e9b27727cls22377448qvi.0.-pod-prod-gmail;
 Mon, 10 Apr 2023 17:21:58 -0700 (PDT)
X-Received: by 2002:a05:6214:2341:b0:5e0:5ea6:69d2 with SMTP id hu1-20020a056214234100b005e05ea669d2mr21261739qvb.0.1681172518687;
        Mon, 10 Apr 2023 17:21:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1681172518; cv=none;
        d=google.com; s=arc-20160816;
        b=Rd9WsW0zTCeVzeCSHPB1Zwikkiqj4ghho7O8goleZLTr/8ic8jGNmcJWcemQy0XFN/
         L9mF+eerR4Uj+DJPhb6mdOagJs12kCTCyHQzN3NhrxqCDHw7LYnRr75j3s85Q6f1OXky
         ahEkttUFyOH73qbkBIOeBraXxxNxYXWcbc/fHkKTaJFCGYxc+EFnsE969GnSKh/w8/zW
         0B83qBjn8fZYKODLeAtaFsTxiuK2oAhjsUvOKd6GGoYXbn62pL8uHPYg2u1IVTBvaHOw
         oayd2WyKR2UUQeFB4utGd145mu328pAr310frCEX/V7kiHd6uQ2wRa5CSVMbiOwKO/GD
         GJ8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=bDcDagWkuCrxuo8uQDXbQfDAPiEdPaMc5CJpIoULtJY=;
        b=KhPw+2mmlR3zpwvOCYY9jDbu3i0PeT9z2YVNA7KLaC6HeBe3Y61Diax39FNsveRnGI
         UDlDaEvUggxNu7594gjCyw/t0pTPPtEzdlINT6UgqtbLHB9gub+iEp8uPBodT8tlBAsj
         jVz0Ys/2L4huzjeuJvRL0mtFZxgXL3qPAi/njHwrW8DmwE4KBZwcu8otik5WkuUjOD33
         8NCoZio4REKqwqo3jRVn+e6lCG5YYVfDbRX+zQG1r68pOcNAKOq+gtHozfE450wGsCps
         BZJ9PLvDLgrk6WflwMhUIem12azcqfVD3ybua/9QNnoPJquTWgmyjkG2+zY+Ezr+/2wJ
         AFqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XO9n1I1d;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id od7-20020a0562142f0700b005e63f83b836si875794qvb.4.2023.04.10.17.21.58
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Apr 2023 17:21:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-148-0rOLItsCMYqQDi2ARzIm4Q-1; Mon, 10 Apr 2023 20:21:54 -0400
X-MC-Unique: 0rOLItsCMYqQDi2ARzIm4Q-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2C0A43C02198;
	Tue, 11 Apr 2023 00:21:54 +0000 (UTC)
Received: from localhost (unknown [10.2.16.6])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6CEA3492B00;
	Tue, 11 Apr 2023 00:21:53 +0000 (UTC)
Date: Mon, 10 Apr 2023 17:21:51 -0700
From: Chris Leech <cleech@redhat.com>
To: Hannes Reinecke <hare@suse.de>
Cc: Lee Duncan <leeman.duncan@gmail.com>, linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com, netdev@vger.kernel.org,
	Lee Duncan <lduncan@suse.com>
Subject: Re: [RFC PATCH 5/9] iscsi: set netns for iscsi_tcp hosts
Message-ID: <ZDSoH193jm2jOZKA@localhost>
Mail-Followup-To: Hannes Reinecke <hare@suse.de>,
	Lee Duncan <leeman.duncan@gmail.com>, linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com, netdev@vger.kernel.org,
	Lee Duncan <lduncan@suse.com>
References: <cover.1675876731.git.lduncan@suse.com>
 <566c527d12f6ed56eeb40952fef7431a0ccdc78f.1675876735.git.lduncan@suse.com>
 <82eb95ac-2dca-7a7a-116a-2771c4551bab@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <82eb95ac-2dca-7a7a-116a-2771c4551bab@suse.de>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=XO9n1I1d;
       spf=pass (google.com: domain of cleech@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Tue, Mar 14, 2023 at 05:29:25PM +0100, Hannes Reinecke wrote:
> On 2/8/23 18:40, Lee Duncan wrote:
> > From: Lee Duncan <lduncan@suse.com>
> > 
> > This lets iscsi_tcp operate in multiple namespaces.  It uses current
> > during session creation to find the net namespace, but it might be
> > better to manage to pass it along from the iscsi netlink socket.
> > 
> And indeed, I'd rather use the namespace from the iscsi netlink socket.
> If you use the namespace from session creation you'd better hope that
> this function is not called from a workqueue ...

The cleanest way I see to do this is to split the transport
session_create function between bound and unbound, instead of checking
for a NULL ep.  That should cleanly serperate out the host-per-session
behavior of iscsi_tcp, so we can pass in the namespace without changing
the other drivers.

This is what that looks like on top of the existing patches, but we can
merge it in and rearrange if desired.

- Chris

---

Distinguish between bound and unbound session creation with different
transport functions, instead of just checking for a NULL endpoint.

This let's the transport code pass the network namespace into the
unbound session creation of iscsi_tcp, without changing the offloading
drivers which all expect an bound endpoint.

iSER has compatibility checks to work without a bound endpoint, so
expose both transport functions there.

Signed-off-by: Chris Leech <cleech@redhat.com>
---
 drivers/infiniband/ulp/iser/iscsi_iser.c | 41 +++++++++++++++++-------
 drivers/scsi/iscsi_tcp.c                 | 16 ++++-----
 drivers/scsi/iscsi_tcp.h                 |  1 +
 drivers/scsi/scsi_transport_iscsi.c      | 17 +++++++---
 include/scsi/scsi_transport_iscsi.h      |  3 ++
 5 files changed, 52 insertions(+), 26 deletions(-)

diff --git a/drivers/infiniband/ulp/iser/iscsi_iser.c b/drivers/infiniband/ulp/iser/iscsi_iser.c
index 6865f62eb831..ca8de612d585 100644
--- a/drivers/infiniband/ulp/iser/iscsi_iser.c
+++ b/drivers/infiniband/ulp/iser/iscsi_iser.c
@@ -593,20 +593,10 @@ static inline unsigned int iser_dif_prot_caps(int prot_caps)
 	return ret;
 }
 
-/**
- * iscsi_iser_session_create() - create an iscsi-iser session
- * @ep:             iscsi end-point handle
- * @cmds_max:       maximum commands in this session
- * @qdepth:         session command queue depth
- * @initial_cmdsn:  initiator command sequnce number
- *
- * Allocates and adds a scsi host, expose DIF supprot if
- * exists, and sets up an iscsi session.
- */
 static struct iscsi_cls_session *
-iscsi_iser_session_create(struct iscsi_endpoint *ep,
+__iscsi_iser_session_create(struct iscsi_endpoint *ep,
 			  uint16_t cmds_max, uint16_t qdepth,
-			  uint32_t initial_cmdsn)
+			  uint32_t initial_cmdsn, struct net *net)
 {
 	struct iscsi_cls_session *cls_session;
 	struct Scsi_Host *shost;
@@ -694,6 +684,32 @@ iscsi_iser_session_create(struct iscsi_endpoint *ep,
 	return NULL;
 }
 
+/**
+ * iscsi_iser_session_create() - create an iscsi-iser session
+ * @ep:             iscsi end-point handle
+ * @cmds_max:       maximum commands in this session
+ * @qdepth:         session command queue depth
+ * @initial_cmdsn:  initiator command sequnce number
+ *
+ * Allocates and adds a scsi host, expose DIF supprot if
+ * exists, and sets up an iscsi session.
+ */
+static struct iscsi_cls_session *
+iscsi_iser_session_create(struct iscsi_endpoint *ep,
+			  uint16_t cmds_max, uint16_t qdepth,
+			  uint32_t initial_cmdsn) {
+	return __iscsi_iser_session_create(ep, cmds_max, qdepth,
+					   initial_cmdsn, NULL);
+}
+
+static struct iscsi_cls_session *
+iscsi_iser_unbound_session_create(struct net *net,
+				  uint16_t cmds_max, uint16_t qdepth,
+				  uint32_t initial_cmdsn) {
+	return __iscsi_iser_session_create(NULL, cmds_max, qdepth,
+					   initial_cmdsn, net);
+}
+
 static int iscsi_iser_set_param(struct iscsi_cls_conn *cls_conn,
 				enum iscsi_param param, char *buf, int buflen)
 {
@@ -983,6 +999,7 @@ static struct iscsi_transport iscsi_iser_transport = {
 	.caps                   = CAP_RECOVERY_L0 | CAP_MULTI_R2T | CAP_TEXT_NEGO,
 	/* session management */
 	.create_session         = iscsi_iser_session_create,
+	.create_unbound_session = iscsi_iser_unbound_session_create,
 	.destroy_session        = iscsi_iser_session_destroy,
 	/* connection management */
 	.create_conn            = iscsi_iser_conn_create,
diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 171685011ad9..b78239f25073 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -922,7 +922,7 @@ iscsi_sw_tcp_conn_get_stats(struct iscsi_cls_conn *cls_conn,
 }
 
 static struct iscsi_cls_session *
-iscsi_sw_tcp_session_create(struct iscsi_endpoint *ep, uint16_t cmds_max,
+iscsi_sw_tcp_session_create(struct net *net, uint16_t cmds_max,
 			    uint16_t qdepth, uint32_t initial_cmdsn)
 {
 	struct iscsi_cls_session *cls_session;
@@ -931,11 +931,6 @@ iscsi_sw_tcp_session_create(struct iscsi_endpoint *ep, uint16_t cmds_max,
 	struct Scsi_Host *shost;
 	int rc;
 
-	if (ep) {
-		printk(KERN_ERR "iscsi_tcp: invalid ep %p.\n", ep);
-		return NULL;
-	}
-
 	shost = iscsi_host_alloc(&iscsi_sw_tcp_sht,
 				 sizeof(struct iscsi_sw_tcp_host), 1);
 	if (!shost)
@@ -952,6 +947,9 @@ iscsi_sw_tcp_session_create(struct iscsi_endpoint *ep, uint16_t cmds_max,
 		goto free_host;
 	shost->can_queue = rc;
 
+	tcp_sw_host = iscsi_host_priv(shost);
+	tcp_sw_host->net_ns = net;
+
 	if (iscsi_host_add(shost, NULL))
 		goto free_host;
 
@@ -968,7 +966,6 @@ iscsi_sw_tcp_session_create(struct iscsi_endpoint *ep, uint16_t cmds_max,
 		goto remove_session;
 
 	/* We are now fully setup so expose the session to sysfs. */
-	tcp_sw_host = iscsi_host_priv(shost);
 	tcp_sw_host->session = session;
 	return cls_session;
 
@@ -1074,7 +1071,8 @@ static int iscsi_sw_tcp_slave_configure(struct scsi_device *sdev)
 
 static struct net *iscsi_sw_tcp_netns(struct Scsi_Host *shost)
 {
-	return current->nsproxy->net_ns;
+	struct iscsi_sw_tcp_host *tcp_sw_host = iscsi_host_priv(shost);
+	return tcp_sw_host->net_ns;
 }
 
 static struct scsi_host_template iscsi_sw_tcp_sht = {
@@ -1104,7 +1102,7 @@ static struct iscsi_transport iscsi_sw_tcp_transport = {
 	.caps			= CAP_RECOVERY_L0 | CAP_MULTI_R2T | CAP_HDRDGST
 				  | CAP_DATADGST,
 	/* session management */
-	.create_session		= iscsi_sw_tcp_session_create,
+	.create_unbound_session	= iscsi_sw_tcp_session_create,
 	.destroy_session	= iscsi_sw_tcp_session_destroy,
 	/* connection management */
 	.create_conn		= iscsi_sw_tcp_conn_create,
diff --git a/drivers/scsi/iscsi_tcp.h b/drivers/scsi/iscsi_tcp.h
index 68e14a344904..f0020cb22f59 100644
--- a/drivers/scsi/iscsi_tcp.h
+++ b/drivers/scsi/iscsi_tcp.h
@@ -53,6 +53,7 @@ struct iscsi_sw_tcp_conn {
 
 struct iscsi_sw_tcp_host {
 	struct iscsi_session	*session;
+	struct net *net_ns;
 };
 
 struct iscsi_sw_tcp_hdrbuf {
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 8fafa8f0e0df..4d346e79468e 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -3144,14 +3144,21 @@ static int
 iscsi_if_create_session(struct iscsi_internal *priv, struct iscsi_endpoint *ep,
 			struct iscsi_uevent *ev, pid_t pid,
 			uint32_t initial_cmdsn,	uint16_t cmds_max,
-			uint16_t queue_depth)
+			uint16_t queue_depth, struct net *net)
 {
 	struct iscsi_transport *transport = priv->iscsi_transport;
 	struct iscsi_cls_session *session;
 	struct Scsi_Host *shost;
 
-	session = transport->create_session(ep, cmds_max, queue_depth,
-					    initial_cmdsn);
+	if (ep) {
+		session = transport->create_session(ep, cmds_max, queue_depth,
+						    initial_cmdsn);
+	} else {
+		session = transport->create_unbound_session(net, cmds_max,
+							    queue_depth,
+							    initial_cmdsn);
+	}
+
 	if (!session)
 		return -ENOMEM;
 
@@ -4145,7 +4152,7 @@ iscsi_if_recv_msg(struct net *net, struct sk_buff *skb,
 					      portid,
 					      ev->u.c_session.initial_cmdsn,
 					      ev->u.c_session.cmds_max,
-					      ev->u.c_session.queue_depth);
+					      ev->u.c_session.queue_depth, net);
 		break;
 	/* MARK */
 	case ISCSI_UEVENT_CREATE_BOUND_SESSION:
@@ -4160,7 +4167,7 @@ iscsi_if_recv_msg(struct net *net, struct sk_buff *skb,
 					portid,
 					ev->u.c_bound_session.initial_cmdsn,
 					ev->u.c_bound_session.cmds_max,
-					ev->u.c_bound_session.queue_depth);
+					ev->u.c_bound_session.queue_depth, net);
 		iscsi_put_endpoint(ep);
 		break;
 	case ISCSI_UEVENT_DESTROY_SESSION:
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index 0c3fd690ecf8..4d8a3d770bed 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -79,6 +79,9 @@ struct iscsi_transport {
 	struct iscsi_cls_session *(*create_session) (struct iscsi_endpoint *ep,
 					uint16_t cmds_max, uint16_t qdepth,
 					uint32_t sn);
+	struct iscsi_cls_session *(*create_unbound_session) (struct net *net,
+					uint16_t cmds_max, uint16_t qdepth,
+					uint32_t sn);
 	void (*destroy_session) (struct iscsi_cls_session *session);
 	struct iscsi_cls_conn *(*create_conn) (struct iscsi_cls_session *sess,
 				uint32_t cid);
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/ZDSoH193jm2jOZKA%40localhost.
