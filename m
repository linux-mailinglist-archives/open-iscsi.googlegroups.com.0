Return-Path: <open-iscsi+bncBDLIXLMFVAERBTUL22SAMGQEQ4JOFTI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA8D73B67B
	for <lists+open-iscsi@lfdr.de>; Fri, 23 Jun 2023 13:45:21 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id e9e14a558f8ab-3420ff13fbfsf3376025ab.1
        for <lists+open-iscsi@lfdr.de>; Fri, 23 Jun 2023 04:45:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1687520719; cv=pass;
        d=google.com; s=arc-20160816;
        b=eUYXAofotUlaN83q4cy3f/KuAXbFAxgBvp4jKtCDtSubFlsR486U7OPIEcplqTc1yx
         lvbLE/cn19BdEjchJS/Sw1/M/56DyyrOrKiOUK/Fp5rAVZlqch7Kmk2klUSL5C2ko0j7
         cA2UCh7nGR22ZUMvDwLnZJFvswsf7BkRtOEl6cVxwIofKusZqQJUJd+uTZdg9knmzQSq
         iTjZZ+Vw9BOTGU6LgLydyXa/1qPiXHqnOe/FHV2XEWTH4DagCeAlRfVNEXAE1GDXXrXT
         rcGq5Uw28FopuH8YjOb9mqCMi3GBaQcNF3+IcFSb6RO1z3xPATqC8rSmjeISY+pBCK8H
         BXcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=UmyhZyckVQpF9ePyMQ5weC8EOmr0MvOSL0tZOdhK+1I=;
        b=aJ1tyUR1+es5D8Svkius0esaRT1epsai8U7I/dJ1y1vbeBUhSL6+4881DZSyxycAU4
         0mnZ8Zl7PEoVNnGH36KsASq6kXeM6RHU/uCZlAgw26UaOyDwb4FWwIhiJSWcW7qpHMdv
         kUQZJkC6JSe5iZsftNRgFGQphSP8dPzFP5QDg4dmtA/atr+K67gH4OVpQ6+BKQxvGiBE
         aAt2M2T8r40h34rYFtXWczzFw6e0yhHwJiQAaGMwtWzkSjRFtX4XwBSV85aij5jlNp6u
         eHabqKPdWBmQ+qU9hlg0WPQ/v+d7WadkxXd+3hLMcwTjCWNAwvWfaeALVy6E3GVgLufe
         geaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Z2vokp+G;
       spf=pass (google.com: domain of dhowells@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1687520719; x=1690112719;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UmyhZyckVQpF9ePyMQ5weC8EOmr0MvOSL0tZOdhK+1I=;
        b=N0eItKczrIZOr3aOwRTKaS+z61jS7jiyRoVVFZ3LPsCLnjAiyj65duRnKD3KhteWgr
         cqrS/exYyZ/lwevIETbLOUNTVO5B1WtXlQCvqXWzFFp8UUtunacHrc5feiaGljh6zD2b
         KQJ8RJvvuvWd5TDOY4mBWxyTlTd2IH1I+LdSQ/RuMNvpwAtwNjNaVF7AtswMkkcC3Nwj
         mqk3rs0HIcnVHDMpiGWpYPVlVrGx3cHjb5X8tydQMRXf1lbQpTiuJyLeMVSR3uJfJ09w
         NMtwv19JCHlR2vCwbMx9NiH6uyIDJk8+OHjRzsV/+ydxtxFi+vu423UWf0IjKkOrHi+n
         SqdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687520719; x=1690112719;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UmyhZyckVQpF9ePyMQ5weC8EOmr0MvOSL0tZOdhK+1I=;
        b=jWQLpjA1pxZNmv9Bn8eQWk3FGxK7Hwmr5Uwm/zJDrUFaJT81xzcU2/7HmUd1YRf5Kx
         mAMrajiiJFvPRYGZ8XueXuZSNfjmJmg6BQ9d7ND5JjgF+x0z77nm5vua9ZOj0WBpkNr+
         7PO6XktUYvDLvuAw9KSAL1RcLSMITbW/CFrL7zpq9BZx6MZ6YfO6Hg791zEtXKq6AJlf
         r1pDaonz+tG/GYLJlLIEhUs32f0/RhOOmXl7R5p8aqjLlTLIO0Up+sIrTcJEfgt8S/Ed
         eikIW2Cf6HBi9HXme9Q0qfl05L2WXixLyBFk7EncyUHDub0KcSGdDWOzrpjbL5+EN7fh
         qnMQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AC+VfDy5CZF7VIf9M4rLA+1XMSzNLxgpGwpmh0EHtlhAjCHq3tjXWAbA
	z8dEbcetzo9Gy+taOVzeoTI=
X-Google-Smtp-Source: ACHHUZ7Fdqwz7MII03h3xJtQegP18KVRQEz+6Jr9YVlpJjmFqxSJmBqq/v5RbRu7OSOYKDX2gMbMxA==
X-Received: by 2002:a92:cb47:0:b0:33a:a6de:65be with SMTP id f7-20020a92cb47000000b0033aa6de65bemr16239323ilq.21.1687520719719;
        Fri, 23 Jun 2023 04:45:19 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a92:c543:0:b0:343:c13c:368c with SMTP id a3-20020a92c543000000b00343c13c368cls1072732ilj.2.-pod-prod-08-us;
 Fri, 23 Jun 2023 04:45:17 -0700 (PDT)
X-Received: by 2002:a05:6602:2150:b0:780:d9fa:cfd5 with SMTP id y16-20020a056602215000b00780d9facfd5mr1926794ioy.2.1687520717905;
        Fri, 23 Jun 2023 04:45:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1687520717; cv=none;
        d=google.com; s=arc-20160816;
        b=cl0R7WlDXEBpZEoWPMaBLpVzQ1cB5NH6ty8lFk682G5uMUYwwLkoJz+nXAv5A8mR+o
         6y1BXbllNknjZ0PPpkduuX0xS0ib1AoZkCbR74G2QlnSsFz9iFr1D/9GY5r/PBOtHjfn
         QZyelNLf6OV7wQvTet69F9Vw/LPZFSEPK2QPzeaBeCEb/sufzyNI2PHCe8tb0gKLiy8F
         thsENlFtDiSPWBNx9scVtD6yBfM8JyJksege3GGPDrcYEBsULKz4L46fQKZtVbiVgFuS
         AZr5n9edPbnmWCCMibIzTp1VY4RLiiYvoBqi9YJ3U1Oh2J9zCc9w+Ne5kPuSvEIWU/Vc
         QmGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fDJq6YgohECWMLRvYSaMvRBz5Nf3qARzDo2+NfjppDk=;
        b=D5PwnCbKsom1qpME1zOeYgt3bajPBknPXGRpHcUSS4rK0KD7cNBTpH6shJs95H0Loj
         BAQT6UP9p4Lejr1jwAg0fgdZn3P9lYIH363LES4zQ6vLmIx7MrNQ0fMMVXbnMY12N7mB
         nzf+zWbbwKj/RvYjekJFPR552jb6tK8FKTQVgN6UDboToOMxxwUksJqm7CsJsHwAo02U
         4eyZdsm/uc9KNhkjyXb4R7y53GYidLwQIDCbpDW71R3zQuZlKClgPNcOPh5OE6ew470z
         h8juginMQMC+lJ63Gd5o41pKfDdF0r0RRVWoxZzSJ0B7K1UJqdF6QMqFme05JB9jBQp8
         /shA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Z2vokp+G;
       spf=pass (google.com: domain of dhowells@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id cx25-20020a056638491900b0041abe5ca15bsi747037jab.2.2023.06.23.04.45.17
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jun 2023 04:45:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of dhowells@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-22-hRm2Fq0zPDmOXsotSEqhiA-1; Fri, 23 Jun 2023 07:45:14 -0400
X-MC-Unique: hRm2Fq0zPDmOXsotSEqhiA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6034588D7F7;
	Fri, 23 Jun 2023 11:45:11 +0000 (UTC)
Received: from warthog.procyon.org.com (unknown [10.42.28.4])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E750E492C13;
	Fri, 23 Jun 2023 11:45:08 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
To: netdev@vger.kernel.org
Cc: David Howells <dhowells@redhat.com>,
	Alexander Duyck <alexander.duyck@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
	David Ahern <dsahern@kernel.org>,
	Matthew Wilcox <willy@infradead.org>,
	Jens Axboe <axboe@kernel.dk>,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	Maurizio Lombardi <mlombard@redhat.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Al Viro <viro@zeniv.linux.org.uk>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	target-devel@vger.kernel.org
Subject: [PATCH net-next v4 11/15] iscsi: Use sendmsg(MSG_SPLICE_PAGES) rather than sendpage
Date: Fri, 23 Jun 2023 12:44:21 +0100
Message-ID: <20230623114425.2150536-12-dhowells@redhat.com>
In-Reply-To: <20230623114425.2150536-1-dhowells@redhat.com>
References: <20230623114425.2150536-1-dhowells@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Original-Sender: dhowells@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Z2vokp+G;
       spf=pass (google.com: domain of dhowells@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
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

Use sendmsg() with MSG_SPLICE_PAGES rather than sendpage.  This allows
multiple pages and multipage folios to be passed through.

TODO: iscsit_fe_sendpage_sg() should perhaps set up a bio_vec array for the
entire set of pages it's going to transfer plus two for the header and
trailer and page fragments to hold the header and trailer - and then call
sendmsg once for the entire message.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: Lee Duncan <lduncan@suse.com>
cc: Chris Leech <cleech@redhat.com>
cc: Mike Christie <michael.christie@oracle.com>
cc: Maurizio Lombardi <mlombard@redhat.com>
cc: "James E.J. Bottomley" <jejb@linux.ibm.com>
cc: "Martin K. Petersen" <martin.petersen@oracle.com>
cc: "David S. Miller" <davem@davemloft.net>
cc: Eric Dumazet <edumazet@google.com>
cc: Jakub Kicinski <kuba@kernel.org>
cc: Paolo Abeni <pabeni@redhat.com>
cc: Jens Axboe <axboe@kernel.dk>
cc: Matthew Wilcox <willy@infradead.org>
cc: Al Viro <viro@zeniv.linux.org.uk>
cc: open-iscsi@googlegroups.com
cc: linux-scsi@vger.kernel.org
cc: target-devel@vger.kernel.org
cc: netdev@vger.kernel.org
---

Notes:
    ver #2)
     - Wrap lines at 80.

 drivers/scsi/iscsi_tcp.c                 | 26 +++++++++---------------
 drivers/scsi/iscsi_tcp.h                 |  2 --
 drivers/target/iscsi/iscsi_target_util.c | 15 ++++++++------
 3 files changed, 19 insertions(+), 24 deletions(-)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 9637d4bc2bc9..9ab8555180a3 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -301,35 +301,32 @@ static int iscsi_sw_tcp_xmit_segment(struct iscsi_tcp_conn *tcp_conn,
 
 	while (!iscsi_tcp_segment_done(tcp_conn, segment, 0, r)) {
 		struct scatterlist *sg;
+		struct msghdr msg = {};
+		struct bio_vec bv;
 		unsigned int offset, copy;
-		int flags = 0;
 
 		r = 0;
 		offset = segment->copied;
 		copy = segment->size - offset;
 
 		if (segment->total_copied + segment->size < segment->total_size)
-			flags |= MSG_MORE | MSG_SENDPAGE_NOTLAST;
+			msg.msg_flags |= MSG_MORE;
 
 		if (tcp_sw_conn->queue_recv)
-			flags |= MSG_DONTWAIT;
+			msg.msg_flags |= MSG_DONTWAIT;
 
-		/* Use sendpage if we can; else fall back to sendmsg */
 		if (!segment->data) {
+			if (!tcp_conn->iscsi_conn->datadgst_en)
+				msg.msg_flags |= MSG_SPLICE_PAGES;
 			sg = segment->sg;
 			offset += segment->sg_offset + sg->offset;
-			r = tcp_sw_conn->sendpage(sk, sg_page(sg), offset,
-						  copy, flags);
+			bvec_set_page(&bv, sg_page(sg), copy, offset);
 		} else {
-			struct msghdr msg = { .msg_flags = flags };
-			struct kvec iov = {
-				.iov_base = segment->data + offset,
-				.iov_len = copy
-			};
-
-			r = kernel_sendmsg(sk, &msg, &iov, 1, copy);
+			bvec_set_virt(&bv, segment->data + offset, copy);
 		}
+		iov_iter_bvec(&msg.msg_iter, ITER_SOURCE, &bv, 1, copy);
 
+		r = sock_sendmsg(sk, &msg);
 		if (r < 0) {
 			iscsi_tcp_segment_unmap(segment);
 			return r;
@@ -746,7 +743,6 @@ iscsi_sw_tcp_conn_bind(struct iscsi_cls_session *cls_session,
 	sock_no_linger(sk);
 
 	iscsi_sw_tcp_conn_set_callbacks(conn);
-	tcp_sw_conn->sendpage = tcp_sw_conn->sock->ops->sendpage;
 	/*
 	 * set receive state machine into initial state
 	 */
@@ -777,8 +773,6 @@ static int iscsi_sw_tcp_conn_set_param(struct iscsi_cls_conn *cls_conn,
 			return -ENOTCONN;
 		}
 		iscsi_set_param(cls_conn, param, buf, buflen);
-		tcp_sw_conn->sendpage = conn->datadgst_en ?
-			sock_no_sendpage : tcp_sw_conn->sock->ops->sendpage;
 		mutex_unlock(&tcp_sw_conn->sock_lock);
 		break;
 	case ISCSI_PARAM_MAX_R2T:
diff --git a/drivers/scsi/iscsi_tcp.h b/drivers/scsi/iscsi_tcp.h
index 68e14a344904..89a6fc552f0b 100644
--- a/drivers/scsi/iscsi_tcp.h
+++ b/drivers/scsi/iscsi_tcp.h
@@ -47,8 +47,6 @@ struct iscsi_sw_tcp_conn {
 	/* MIB custom statistics */
 	uint32_t		sendpage_failures_cnt;
 	uint32_t		discontiguous_hdr_cnt;
-
-	ssize_t (*sendpage)(struct socket *, struct page *, int, size_t, int);
 };
 
 struct iscsi_sw_tcp_host {
diff --git a/drivers/target/iscsi/iscsi_target_util.c b/drivers/target/iscsi/iscsi_target_util.c
index b14835fcb033..6231fa4ef5c6 100644
--- a/drivers/target/iscsi/iscsi_target_util.c
+++ b/drivers/target/iscsi/iscsi_target_util.c
@@ -1129,6 +1129,8 @@ int iscsit_fe_sendpage_sg(
 	struct iscsit_conn *conn)
 {
 	struct scatterlist *sg = cmd->first_data_sg;
+	struct bio_vec bvec;
+	struct msghdr msghdr = { .msg_flags = MSG_SPLICE_PAGES,	};
 	struct kvec iov;
 	u32 tx_hdr_size, data_len;
 	u32 offset = cmd->first_data_sg_off;
@@ -1172,17 +1174,18 @@ int iscsit_fe_sendpage_sg(
 		u32 space = (sg->length - offset);
 		u32 sub_len = min_t(u32, data_len, space);
 send_pg:
-		tx_sent = conn->sock->ops->sendpage(conn->sock,
-					sg_page(sg), sg->offset + offset, sub_len, 0);
+		bvec_set_page(&bvec, sg_page(sg), sub_len, sg->offset + offset);
+		iov_iter_bvec(&msghdr.msg_iter, ITER_SOURCE, &bvec, 1, sub_len);
+
+		tx_sent = conn->sock->ops->sendmsg(conn->sock, &msghdr,
+						   sub_len);
 		if (tx_sent != sub_len) {
 			if (tx_sent == -EAGAIN) {
-				pr_err("tcp_sendpage() returned"
-						" -EAGAIN\n");
+				pr_err("sendmsg/splice returned -EAGAIN\n");
 				goto send_pg;
 			}
 
-			pr_err("tcp_sendpage() failure: %d\n",
-					tx_sent);
+			pr_err("sendmsg/splice failure: %d\n", tx_sent);
 			return -1;
 		}
 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230623114425.2150536-12-dhowells%40redhat.com.
