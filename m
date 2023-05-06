Return-Path: <open-iscsi+bncBCYMVIPVXQMBB7GF3ORAMGQE2FJXUHI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0656F94FF
	for <lists+open-iscsi@lfdr.de>; Sun,  7 May 2023 01:30:06 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id af79cd13be357-7515a759676sf171590285a.1
        for <lists+open-iscsi@lfdr.de>; Sat, 06 May 2023 16:30:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1683415805; cv=pass;
        d=google.com; s=arc-20160816;
        b=LOl9q7Ls4ee2o7n2MnLCNn6uyYkax1uWeKU0S7V0JwAGahPbLCd8JXN6w9eb9F/8g7
         Lf1l2J05I1vtH5zey0gM4vss0OKhxk6AJuKpveiA53laTeMlQQZgoSMsUlDfBpJRyxge
         oKADQ8Ue2pgltju4cLuJG/dwx8BE3Sr05zum474S5qWB5nmj388MJtwODZK0IUnvSlm0
         aTZMOowGz9fpjhCObausd96wB+7sqC+90ckvenO1O+Idp3O7j+pVlbeYt77Hi0+uU/ZH
         Abcb7qIASRHr08IHh7RkhD4JGWBfSfCizeYlWPENnbubKgxDCURBbqJx8JjA3+ulC89K
         qhjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=cCf2hcfzlhODKYyGZelRc4FtfkAXIRF4Ys5CqwwsV9k=;
        b=P4SKa+xUgN0n42fRieCwJ0P8n8GLLXa+OHGz7SG+wuXW+ieN8vEkci3sHHydFdkYIT
         1/gVd23hgQQrai1m2H9wfKyUcq0yCG1EwVXVehMuspHHJQe53MEZut6+WL3N37un9XGy
         btPfcB+aiWb3tK3RYR3SUsPtLW2Bi7JE49auYKUhJAwuaqf9nMIyo/sFxBDL2LR+XpFf
         3Nu/3YrMDRuZWWCZ6k2z0x/ufx6gdJExXa5/67gWVprn3NkZ0sRTUxlrmshavcsGFhLO
         U4E6sqrdkxWLdWyv1fQbpsozWCcFgq1pmqt5IBmBj+y5QCzkEQdbqkEHR1Ri0q3tgMUi
         SThA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RBMhZSlW;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1683415805; x=1686007805;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cCf2hcfzlhODKYyGZelRc4FtfkAXIRF4Ys5CqwwsV9k=;
        b=rOA8PoO5ldPGyRXNBn6d7bmut9Bty1a93LheNAy4INHKYN/Yrc6lvUMtI3f7uHN0yp
         CVOJVQaQ2Q3xTlcKmE5PMBhwFg1BL8xU5wv0XCSBVQ6fQNQIcbrpud4bxooWF+Z3LwEg
         7amH2Tn83tMAzQpe3UsjhsoY4f1QjRMkb/Z/sCV9DjrNvoWNeq1gv9BoCrlvWAcOgkmV
         qUWCti+1E0aW595cEQGTLr+s+UKixMizUNesKSss9ra09oocctoa7UI/q/zLtcu+dtm1
         a1nuNFE9hMOjnwwrHaAQeD4BnGcjFD7/GANxShPYxZS/QtDrwV93tXoNk15waIEv4j19
         7qsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683415805; x=1686007805;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cCf2hcfzlhODKYyGZelRc4FtfkAXIRF4Ys5CqwwsV9k=;
        b=XDSqu1Uf/LZsNnouPpGYW3vBvhYwieNI9uSLnFqyEI9U+WAHEKkkMTXmzzdkdsolM9
         d9EE7DjZJ8R2Oll8fCDK5YM/JelzmrsfoI+/Qo0K7mhB+nMI5BCp9l/8Gnw7+s/c4vIL
         l/JZHDpIxrYvu6++3/Ji02H4mna2qifg8Pvv1UbwAdKE/IQrll8WtqAGkhZCDEF0ZY5a
         bgqHLjJHvAWWjSs2cjoYv5d8lSG8nRHMH7miAxngr94R7/Sc5xYOHbSrtOlNcQTuNMeH
         QqqFhj+xZIhRF2SbZh1gY3nNTZUJlGFeiU8atNSagUkObdchv6E8x+hN6rFULs7p+CSo
         CTrQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AC+VfDzFg9ifvYMrU5iDombkkE2Ouf3ZkVif+jJL6kugfXKjuw126vT+
	NAAaTm+Ck/71QAZJi/izAk8=
X-Google-Smtp-Source: ACHHUZ7jZnGL+b+jCPE/kWHTHun2jWzZr67ZHDp07PTO1yoZwxOIzkJLDKCrPFmxfUz0oWY3BI9ZLA==
X-Received: by 2002:a05:620a:4512:b0:74d:f227:d25a with SMTP id t18-20020a05620a451200b0074df227d25amr1602429qkp.2.1683415805755;
        Sat, 06 May 2023 16:30:05 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:6f09:0:b0:3ef:3784:2c24 with SMTP id bs9-20020ac86f09000000b003ef37842c24ls22474524qtb.2.-pod-prod-gmail;
 Sat, 06 May 2023 16:30:04 -0700 (PDT)
X-Received: by 2002:a05:622a:190c:b0:3ef:64cb:ab1e with SMTP id w12-20020a05622a190c00b003ef64cbab1emr7173625qtc.59.1683415804426;
        Sat, 06 May 2023 16:30:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1683415804; cv=none;
        d=google.com; s=arc-20160816;
        b=Qw2BWnLJ0ynx8SzGPvz+p5/FG3FaZ/TbpAGbcwHpL6tpJfNyC99NaycOqNywn9gCFt
         2k42Vxf3hPDRJVYw/FFsyV0zwPowp5YffKaBMRjtN4xbh+bg+45elrO555aTTkRqi3AW
         9Pt7MaCXrYpBfihnCFOC4GvzF0+wYM8BFW3ipEJjHUJvHS6qTcpu7W8w7e2Wv8g6rxM9
         2uN2Sf1l0Z6Nb4xaw1MhG/q/RPc3SMQfRHkc5YRe4pXQMtIFa7gZWjk4gvt+tSu+z466
         l3nC6png9Xgpg/T06xJogx1JPJCv4giZ8Cx8V/uIZdwgRC+nqTkADBNkLSybNsSqCEc9
         iPAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7Eyqpr1+E0beJnnwrXpnHbMZS+jSyb2Xwsmumuaw4/E=;
        b=fx53FgBCWdzDGXFvCbgJhTUtldgEMzAF6ZVJ/2SPcnBUg9kbNBEOdNgJ5IWjm6g3d0
         h8uPPgasNUpngu6IYft5sBGP+tAkAGsFQtxaBvYc13leI96ZfkIMQwu3CiZpdZ3hWZdP
         w79Z2xdy6UP9vl4jNRYJIz1euOqqykkw/bwrLAllMSdpaYIGYm8u2bnprvZiyQ1Xq8dF
         p088OiHtdOCCqfYNAet60dgl2lDHl9q1R5tsasglb7GdohpMBEva9dD0zzNVPf82OAWV
         80IzLNcLYSs8xeitnOIKa2vqo9K+5mWbPKthnTHdqWxDv8d37u3H271tZvJ9CMEGt3l6
         RJaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RBMhZSlW;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id bz11-20020a05622a1e8b00b003ea887d6fb8si89383qtb.4.2023.05.06.16.30.04
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 May 2023 16:30:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-402-Jsse6P-SMYWEE2cGwOxiOg-1; Sat, 06 May 2023 19:30:00 -0400
X-MC-Unique: Jsse6P-SMYWEE2cGwOxiOg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 69DCE38123A0;
	Sat,  6 May 2023 23:30:00 +0000 (UTC)
Received: from toolbox.redhat.com (unknown [10.2.16.10])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D56AC440BC;
	Sat,  6 May 2023 23:29:59 +0000 (UTC)
From: Chris Leech <cleech@redhat.com>
To: Lee Duncan <lduncan@suse.com>,
	linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	netdev@vger.kernel.org
Cc: Chris Leech <cleech@redhat.com>
Subject: [PATCH 10/11] iscsi: make session and connection lists per-net
Date: Sat,  6 May 2023 16:29:29 -0700
Message-Id: <20230506232930.195451-11-cleech@redhat.com>
In-Reply-To: <20230506232930.195451-1-cleech@redhat.com>
References: <20230506232930.195451-1-cleech@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=RBMhZSlW;
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

Reviewed-by: Hannes Reinecke <hare@suse.de>
Signed-off-by: Chris Leech <cleech@redhat.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 104 ++++++++++++++++------------
 1 file changed, 61 insertions(+), 43 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index cd3228293a64..15d28186996d 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1755,17 +1755,16 @@ static DECLARE_TRANSPORT_CLASS_NS(iscsi_connection_class,
 
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
@@ -1780,19 +1779,18 @@ static struct iscsi_cls_session *iscsi_session_lookup(struct net *net,
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
 
@@ -1804,19 +1802,18 @@ static struct iscsi_cls_conn *iscsi_conn_lookup(struct net *net, uint32_t sid,
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
 
@@ -2228,6 +2225,9 @@ EXPORT_SYMBOL_GPL(iscsi_alloc_session);
 int iscsi_add_session(struct iscsi_cls_session *session, unsigned int target_id)
 {
 	struct Scsi_Host *shost = iscsi_session_to_shost(session);
+	struct iscsi_cls_host *ihost = shost->shost_data;
+	struct net *net = iscsi_host_net(ihost);
+	struct iscsi_net *isn = net_generic(net, iscsi_net_id);
 	unsigned long flags;
 	int id = 0;
 	int err;
@@ -2271,9 +2271,9 @@ int iscsi_add_session(struct iscsi_cls_session *session, unsigned int target_id)
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
@@ -2343,15 +2343,17 @@ static int iscsi_iter_destroy_conn_fn(struct device *dev, void *data)
 
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
@@ -2562,20 +2564,22 @@ static int iscsi_iter_force_destroy_conn_fn(struct device *dev, void *data)
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
@@ -2646,6 +2650,8 @@ int iscsi_add_conn(struct iscsi_cls_conn *conn)
 	int err;
 	unsigned long flags;
 	struct iscsi_cls_session *session = iscsi_dev_to_session(conn->dev.parent);
+	struct net *net = iscsi_sess_net(session);
+	struct iscsi_net *isn = net_generic(net, iscsi_net_id);
 
 	err = device_add(&conn->dev);
 	if (err) {
@@ -2661,9 +2667,9 @@ int iscsi_add_conn(struct iscsi_cls_conn *conn)
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
@@ -2678,11 +2684,14 @@ EXPORT_SYMBOL_GPL(iscsi_add_conn);
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
@@ -3466,20 +3475,21 @@ iscsi_set_path(struct net *net, struct iscsi_transport *transport,
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
@@ -4192,7 +4202,7 @@ iscsi_if_recv_msg(struct net *net, struct sk_buff *skb,
 		session = iscsi_session_lookup(net, ev->u.d_session.sid);
 		if (!session)
 			err = -EINVAL;
-		else if (iscsi_session_has_conns(ev->u.d_session.sid))
+		else if (iscsi_session_has_conns(net, ev->u.d_session.sid))
 			err = -EBUSY;
 		else
 			transport->destroy_session(session);
@@ -4201,15 +4211,16 @@ iscsi_if_recv_msg(struct net *net, struct sk_buff *skb,
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
@@ -5211,6 +5222,13 @@ static int __net_init iscsi_net_init(struct net *net)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230506232930.195451-11-cleech%40redhat.com.
