Return-Path: <open-iscsi+bncBCYMVIPVXQMBBWF62GQQMGQEQ3HV7QQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 656CA6DCB61
	for <lists+open-iscsi@lfdr.de>; Mon, 10 Apr 2023 21:11:22 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id c19-20020a05600c0a5300b003f07515bce8sf2647914wmq.5
        for <lists+open-iscsi@lfdr.de>; Mon, 10 Apr 2023 12:11:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1681153882; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xp0s9t4hV5koGff0eiEYcVeh/+2Fb/s4FegnwJHJ1q3guNC4++1aaUAkZSO0RX5ZLn
         0aXcTGIjtLKEdf8EsWdJzapSKwSbgaJWh8ctYsYYLerjzoocpTubG5XTIunpTmoTp6ZX
         3eNnew5IjLY8eetVrH5lONDlfcPYCKtLZNIxzF1EfTPLdttwGgZzU8kcTym49nffsiXk
         J335ovOWbRo15IT/i6r1/yQf3nBr2cEf+G0GSrj1wz3glbARp2ES7lIWExvlN5bNRdu/
         5PA94MXZ+o5cW54HFUF57J+O9igW79YJoet9JGzEC6GBVG8gYl6B4U0m23uFkq1VnoAt
         ZciQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=SJxEMZa0ZT0Rd9IHRuIGWqB9ghAbGQu90ApnNSLlHmY=;
        b=CaHy7W3l/+BiyxRQjZSvnDSp0bA/cvAwSyD3Zy/Pby0oTAA/izd4GHTrStTgvruFdb
         hA4XUIFsLBR3pKvD5XAIEyvQRjYzI6B+CqCCxTljNn5IAjIFb5SBOHUxuWMqqtUkgQ+K
         Fhr0XN1xhPCqFKDRXjfMOugkmnLzFN7+bkESVVu3n2xyDLpIgXo61JgmSkVXBI+YAoid
         aR0Wc+tjDRGR/WdIgUOzo+NeVTClpLbnY2Im6H4tVH8qql38V6VSQQLcnFhPl0MpzqYy
         /G8CzI/dBcPrdfaPZDkpQHARvVECkhma3FSUZy6JSvQsZ5SDHxSRqgfECQBzGGddgAg+
         6CZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AQYMnHzF;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1681153882;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SJxEMZa0ZT0Rd9IHRuIGWqB9ghAbGQu90ApnNSLlHmY=;
        b=tf50+htc+JCqt01ZE2ABGbFsqjlGwDO2yekBUNDtVk9cqNYChoB0arIFJyLrzCZ5R9
         ewoG71hLNRRZlDZgJWU0krspqPXJLub6WWI6B4nv2GgD0quUoaOf3UBQvsn5gOjPWT+Z
         WmVdrJNJ5eONus/CL8hOYt0UOzxvfHviynSOHp+bRwbU27f3Rz6R1OcxruIb0HKsX7dD
         6U7TH0c0nbRDU6cj/KYHBti5es1caARLMyQfX5FT3S+ERRbII6eKwZzgd3kMem1HRO+x
         bKuchzzLV+iT2AB+bq86N2vf5xks4wkxHhf9AtG1vZKe1dhvIlaexTckhRSvQnYijQcF
         POjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681153882;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SJxEMZa0ZT0Rd9IHRuIGWqB9ghAbGQu90ApnNSLlHmY=;
        b=d+W8LSOY0KABIYtwTrN4qaWOfQMyLx1DpXYLqeD32wABcNCEbySPT83TtYhZR1R+SF
         Lf8vGuG09osNBbaj8A/m66S6b4HHOjogCFhRCmsvM7Gmp6PErOggzJByEYnRbrDnj7Ly
         OdPGk/FFpSHUA6DpTjLAB+4k1XEr1Q6BjhzBwziRCfe+x2fSi7YRIzJvJPnHJu14B6IA
         MbLyl3xQ7aG2vztl6vbfVNESJairs0/SyP1vAbDyyOghF9K6q9b8zHfrSERVtldpzq37
         APTMGozlSRACyiNtuNZhsrX1hWco7mlFBXAHp2n2PunLF2jmlJqKmtchkBxeHkqDv1qB
         qAyQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AAQBX9dJR5WKDeVl9BPRKFT1ei/MRHe08rZc4xneycDj3E0L+ZIEQgeI
	6LfHq8kA5gw8hwmZoMvPpxA=
X-Google-Smtp-Source: AKy350aPK/tofAV8dChkoVDWteqxwA7TsA/pt+n7xDi+gl6IXQ231tFyp8gJZssUUiHXYaBKiGPagQ==
X-Received: by 2002:a05:6000:1acb:b0:2ee:e45d:71cf with SMTP id i11-20020a0560001acb00b002eee45d71cfmr3479316wry.6.1681153881843;
        Mon, 10 Apr 2023 12:11:21 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:600c:470e:b0:3f0:87a0:98f8 with SMTP id
 v14-20020a05600c470e00b003f087a098f8ls1634109wmo.2.-pod-control-gmail; Mon,
 10 Apr 2023 12:11:19 -0700 (PDT)
X-Received: by 2002:a7b:ce11:0:b0:3ed:da74:ab0c with SMTP id m17-20020a7bce11000000b003edda74ab0cmr5600851wmc.19.1681153878995;
        Mon, 10 Apr 2023 12:11:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1681153878; cv=none;
        d=google.com; s=arc-20160816;
        b=e7zdKwKHlYo6y7GYqiceqlEheL0uYqlZd/Ko5pFCzn8dgI4rbj4IZbGUFg+2bkVAkO
         y/XHpfNslB3e6DvNHgOZTzKxALe/4rmt5d5MwTGI9NOM4VpBNtvm5ec3lA48uMs/iWix
         s8bSuEMERtupmjps+TOccUY7rdXBw9QBgQaV1Q0yvnraBwAxpIZfw9PEZ0cUk8R9D5xx
         9Brpw/Lsh7lS64r3PvDPhHkMGBgEe2696Dvc4sJa/Ds9w9ugB6B4P0SZT4TvFurQatsZ
         RI2v4KjzUujrR4CfimPBVMkdUVOx/rpHVdqJ9gETrBJ6jXUZ9nexKCj/5e6DVaFkwvHQ
         MKXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ingp0g90/6/pJ2ejREIp3ERyxmWHuGCQrWwdDlHfBW0=;
        b=iP9PuHg9E2GeKd5iL3MCY1Our+P7kyduazg0g+F93F8aKK7GJPaRUnFNUZ7zOwj62Z
         dMZUF84gDu3jZYmJvGI6EAPqO4rDnRkKPDvut8JgjvWXaPcGXap9sfUe+XGYhs5ma1rq
         pyiurwMY6ugPqz1b/T2EgnbSiyvUkpv5jrKr+fGqx/RwKHuMozBR3V4ZXFbB+4u8ql1b
         g8OpmKf83wy6OnsKIBek7/4oun+6HesXvOt0beK0irEc8oxaLT7HsXEmzx+WegEGOogJ
         gAZwM+4LQP4SA4wmkg4u5t8Kw/4nQZm2PIxyhpWAx4Elz2ZtQoyIwRxp4DxH1OnuHjtX
         BC/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AQYMnHzF;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id i13-20020a5d584d000000b002c6ec127706si502009wrf.0.2023.04.10.12.11.18
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Apr 2023 12:11:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-76-4hfpA3S2N629Bubp-1eNOA-1; Mon, 10 Apr 2023 15:11:12 -0400
X-MC-Unique: 4hfpA3S2N629Bubp-1eNOA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CC9F7101A54F;
	Mon, 10 Apr 2023 19:11:11 +0000 (UTC)
Received: from localhost.redhat.com (unknown [10.2.16.6])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1B28E40C83AC;
	Mon, 10 Apr 2023 19:11:11 +0000 (UTC)
From: Chris Leech <cleech@redhat.com>
To: linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	Hannes Reinecke <hare@suse.de>,
	Lee Duncan <leeman.duncan@gmail.com>,
	netdev@vger.kernel.org
Cc: Chris Leech <cleech@redhat.com>
Subject: [PATCH 10/11] iscsi: make session and connection lists per-net
Date: Mon, 10 Apr 2023 12:10:32 -0700
Message-Id: <20230410191033.1069293-2-cleech@redhat.com>
In-Reply-To: <83de4002-6846-2f90-7848-ef477f0b0fe5@suse.de>
References: <83de4002-6846-2f90-7848-ef477f0b0fe5@suse.de>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=AQYMnHzF;
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

Eliminate the comparisions on list lookups, and it will make it easier
to shut down session on net namespace exit in the next patch.

Signed-off-by: Chris Leech <cleech@redhat.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 104 ++++++++++++++++------------
 1 file changed, 61 insertions(+), 43 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 9a176ea0d866..3a068d8eca2d 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1734,17 +1734,16 @@ static DECLARE_TRANSPORT_CLASS_NS(iscsi_connection_class,
 
 struct iscsi_net {
 	struct sock *nls;
+	spinlock_t sesslock;
+	struct list_head sesslist;
+	spinlock_t connlock;
+	struct list_head connlist;
+	struct list_head connlist_err;
 };
 
 static int iscsi_net_id __read_mostly;
 static DEFINE_MUTEX(rx_queue_mutex);
 
-static LIST_HEAD(sesslist);
-static DEFINE_SPINLOCK(sesslock);
-static LIST_HEAD(connlist);
-static LIST_HEAD(connlist_err);
-static DEFINE_SPINLOCK(connlock);
-
 static uint32_t iscsi_conn_get_sid(struct iscsi_cls_conn *conn)
 {
 	struct iscsi_cls_session *sess = iscsi_dev_to_session(conn->dev.parent);
@@ -1759,19 +1758,18 @@ static struct iscsi_cls_session *iscsi_session_lookup(struct net *net,
 {
 	unsigned long flags;
 	struct iscsi_cls_session *sess;
-	struct net *ns;
+	struct iscsi_net *isn;
 
-	spin_lock_irqsave(&sesslock, flags);
-	list_for_each_entry(sess, &sesslist, sess_list) {
+	isn = net_generic(net, iscsi_net_id);
+
+	spin_lock_irqsave(&isn->sesslock, flags);
+	list_for_each_entry(sess, &isn->sesslist, sess_list) {
 		if (sess->sid == sid) {
-			ns = iscsi_sess_net(sess);
-			if (ns != net)
-				continue;
-			spin_unlock_irqrestore(&sesslock, flags);
+			spin_unlock_irqrestore(&isn->sesslock, flags);
 			return sess;
 		}
 	}
-	spin_unlock_irqrestore(&sesslock, flags);
+	spin_unlock_irqrestore(&isn->sesslock, flags);
 	return NULL;
 }
 
@@ -1783,19 +1781,18 @@ static struct iscsi_cls_conn *iscsi_conn_lookup(struct net *net, uint32_t sid,
 {
 	unsigned long flags;
 	struct iscsi_cls_conn *conn;
-	struct net *ns;
+	struct iscsi_net *isn;
 
-	spin_lock_irqsave(&connlock, flags);
-	list_for_each_entry(conn, &connlist, conn_list) {
+	isn = net_generic(net, iscsi_net_id);
+
+	spin_lock_irqsave(&isn->connlock, flags);
+	list_for_each_entry(conn, &isn->connlist, conn_list) {
 		if ((conn->cid == cid) && (iscsi_conn_get_sid(conn) == sid)) {
-			ns = iscsi_conn_net(conn);
-			if (ns != net)
-				continue;
-			spin_unlock_irqrestore(&connlock, flags);
+			spin_unlock_irqrestore(&isn->connlock, flags);
 			return conn;
 		}
 	}
-	spin_unlock_irqrestore(&connlock, flags);
+	spin_unlock_irqrestore(&isn->connlock, flags);
 	return NULL;
 }
 
@@ -2207,6 +2204,9 @@ EXPORT_SYMBOL_GPL(iscsi_alloc_session);
 int iscsi_add_session(struct iscsi_cls_session *session, unsigned int target_id)
 {
 	struct Scsi_Host *shost = iscsi_session_to_shost(session);
+	struct iscsi_cls_host *ihost = shost->shost_data;
+	struct net *net = iscsi_host_net(ihost);
+	struct iscsi_net *isn = net_generic(net, iscsi_net_id);
 	unsigned long flags;
 	int id = 0;
 	int err;
@@ -2250,9 +2250,9 @@ int iscsi_add_session(struct iscsi_cls_session *session, unsigned int target_id)
 		goto release_dev;
 	}
 
-	spin_lock_irqsave(&sesslock, flags);
-	list_add(&session->sess_list, &sesslist);
-	spin_unlock_irqrestore(&sesslock, flags);
+	spin_lock_irqsave(&isn->sesslock, flags);
+	list_add(&session->sess_list, &isn->sesslist);
+	spin_unlock_irqrestore(&isn->sesslock, flags);
 
 	iscsi_session_event(session, ISCSI_KEVENT_CREATE_SESSION);
 	ISCSI_DBG_TRANS_SESSION(session, "Completed session adding\n");
@@ -2322,15 +2322,17 @@ static int iscsi_iter_destroy_conn_fn(struct device *dev, void *data)
 
 void iscsi_remove_session(struct iscsi_cls_session *session)
 {
+	struct net *net = iscsi_sess_net(session);
+	struct iscsi_net *isn = net_generic(net, iscsi_net_id);
 	unsigned long flags;
 	int err;
 
 	ISCSI_DBG_TRANS_SESSION(session, "Removing session\n");
 
-	spin_lock_irqsave(&sesslock, flags);
+	spin_lock_irqsave(&isn->sesslock, flags);
 	if (!list_empty(&session->sess_list))
 		list_del(&session->sess_list);
-	spin_unlock_irqrestore(&sesslock, flags);
+	spin_unlock_irqrestore(&isn->sesslock, flags);
 
 	if (!cancel_work_sync(&session->block_work))
 		cancel_delayed_work_sync(&session->recovery_work);
@@ -2541,20 +2543,22 @@ static int iscsi_iter_force_destroy_conn_fn(struct device *dev, void *data)
 void iscsi_force_destroy_session(struct iscsi_cls_session *session)
 {
 	struct iscsi_transport *transport = session->transport;
+	struct net *net = iscsi_sess_net(session);
+	struct iscsi_net *isn = net_generic(net, iscsi_net_id);
 	unsigned long flags;
 
 	WARN_ON_ONCE(system_state == SYSTEM_RUNNING);
 
-	spin_lock_irqsave(&sesslock, flags);
+	spin_lock_irqsave(&isn->sesslock, flags);
 	if (list_empty(&session->sess_list)) {
-		spin_unlock_irqrestore(&sesslock, flags);
+		spin_unlock_irqrestore(&isn->sesslock, flags);
 		/*
 		 * Conn/ep is already freed. Session is being torn down via
 		 * async path. For shutdown we don't care about it so return.
 		 */
 		return;
 	}
-	spin_unlock_irqrestore(&sesslock, flags);
+	spin_unlock_irqrestore(&isn->sesslock, flags);
 
 	device_for_each_child(&session->dev, NULL,
 			      iscsi_iter_force_destroy_conn_fn);
@@ -2625,6 +2629,8 @@ int iscsi_add_conn(struct iscsi_cls_conn *conn)
 	int err;
 	unsigned long flags;
 	struct iscsi_cls_session *session = iscsi_dev_to_session(conn->dev.parent);
+	struct net *net = iscsi_sess_net(session);
+	struct iscsi_net *isn = net_generic(net, iscsi_net_id);
 
 	err = device_add(&conn->dev);
 	if (err) {
@@ -2640,9 +2646,9 @@ int iscsi_add_conn(struct iscsi_cls_conn *conn)
 		return err;
 	}
 
-	spin_lock_irqsave(&connlock, flags);
-	list_add(&conn->conn_list, &connlist);
-	spin_unlock_irqrestore(&connlock, flags);
+	spin_lock_irqsave(&isn->connlock, flags);
+	list_add(&conn->conn_list, &isn->connlist);
+	spin_unlock_irqrestore(&isn->connlock, flags);
 
 	return 0;
 }
@@ -2657,11 +2663,14 @@ EXPORT_SYMBOL_GPL(iscsi_add_conn);
  */
 void iscsi_remove_conn(struct iscsi_cls_conn *conn)
 {
+	struct net *net = iscsi_conn_net(conn);
+	struct iscsi_net *isn = net_generic(net, iscsi_net_id);
+
 	unsigned long flags;
 
-	spin_lock_irqsave(&connlock, flags);
+	spin_lock_irqsave(&isn->connlock, flags);
 	list_del(&conn->conn_list);
-	spin_unlock_irqrestore(&connlock, flags);
+	spin_unlock_irqrestore(&isn->connlock, flags);
 
 	transport_unregister_device(&conn->dev);
 	device_del(&conn->dev);
@@ -3432,20 +3441,21 @@ iscsi_set_path(struct net *net, struct iscsi_transport *transport,
 	return err;
 }
 
-static int iscsi_session_has_conns(int sid)
+static int iscsi_session_has_conns(struct net *net, int sid)
 {
+	struct iscsi_net *isn = net_generic(net, iscsi_net_id);
 	struct iscsi_cls_conn *conn;
 	unsigned long flags;
 	int found = 0;
 
-	spin_lock_irqsave(&connlock, flags);
-	list_for_each_entry(conn, &connlist, conn_list) {
+	spin_lock_irqsave(&isn->connlock, flags);
+	list_for_each_entry(conn, &isn->connlist, conn_list) {
 		if (iscsi_conn_get_sid(conn) == sid) {
 			found = 1;
 			break;
 		}
 	}
-	spin_unlock_irqrestore(&connlock, flags);
+	spin_unlock_irqrestore(&isn->connlock, flags);
 
 	return found;
 }
@@ -4157,7 +4167,7 @@ iscsi_if_recv_msg(struct net *net, struct sk_buff *skb,
 		session = iscsi_session_lookup(net, ev->u.d_session.sid);
 		if (!session)
 			err = -EINVAL;
-		else if (iscsi_session_has_conns(ev->u.d_session.sid))
+		else if (iscsi_session_has_conns(net, ev->u.d_session.sid))
 			err = -EBUSY;
 		else
 			transport->destroy_session(session);
@@ -4166,15 +4176,16 @@ iscsi_if_recv_msg(struct net *net, struct sk_buff *skb,
 		session = iscsi_session_lookup(net, ev->u.d_session.sid);
 		if (!session)
 			err = -EINVAL;
-		else if (iscsi_session_has_conns(ev->u.d_session.sid))
+		else if (iscsi_session_has_conns(net, ev->u.d_session.sid))
 			err = -EBUSY;
 		else {
+			struct iscsi_net *isn = net_generic(net, iscsi_net_id);
 			unsigned long flags;
 
 			/* Prevent this session from being found again */
-			spin_lock_irqsave(&sesslock, flags);
+			spin_lock_irqsave(&isn->sesslock, flags);
 			list_del_init(&session->sess_list);
-			spin_unlock_irqrestore(&sesslock, flags);
+			spin_unlock_irqrestore(&isn->sesslock, flags);
 
 			queue_work(system_unbound_wq, &session->destroy_work);
 		}
@@ -5176,6 +5187,13 @@ static int __net_init iscsi_net_init(struct net *net)
 	if (!nls)
 		return -ENOMEM;
 	isn = net_generic(net, iscsi_net_id);
+
+	INIT_LIST_HEAD(&isn->sesslist);
+	spin_lock_init(&isn->sesslock);
+	INIT_LIST_HEAD(&isn->connlist);
+	INIT_LIST_HEAD(&isn->connlist_err);
+	spin_lock_init(&isn->connlock);
+
 	isn->nls = nls;
 	return 0;
 }
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230410191033.1069293-2-cleech%40redhat.com.
