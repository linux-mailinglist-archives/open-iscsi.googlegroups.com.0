Return-Path: <open-iscsi+bncBDLIXLMFVAERB6OF3CSAMGQEHHDPQSY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A3A73C44D
	for <lists+open-iscsi@lfdr.de>; Sat, 24 Jun 2023 00:55:57 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id 38308e7fff4ca-2b483c8ff1dsf11489341fa.1
        for <lists+open-iscsi@lfdr.de>; Fri, 23 Jun 2023 15:55:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1687560956; cv=pass;
        d=google.com; s=arc-20160816;
        b=jYyAMSwy/uRkk/VUfegxH/+IkDtPxjjyyXVTEtoAQgmQrzb270CkjkTljaPM4ap1bC
         ZYz5VYxKNPQ7X5M7MM7G6XBbvH3+R8LWfUE0ZHzwsSRuCqkkD0SIb2ycsvFYVzK94tQL
         odlM65969r2cEs0mEsNVKVARbvIwSW+WpY/h2onVq0pIOzAid07LdWgmkn5ku9411F5h
         W/Am64r4QAil8ag2P2SUF3zrwrN4iHwGhozr3DgjSGSZqCgyQzbbiGOz9VP4wGn1pYle
         RTzyGGcF6WIFHSM7+9oatTxsrCH7hBVPt8w7OqvWfppEaG9PWiIYGa0PyI86GGzuHdjN
         W37A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=Kupgf4laEPit7ZBosecc2Bt6pWVgdXs25oRFirW8BMI=;
        b=wt1M4VH37nx0I23ksQl6MDXCL8HJnRnWN2fdq0y/qoxam29m3GEJ/SBiubtbKvwdF8
         HfBWyObrm/aDMk/BtFuKkiFsc29FoiNcUlmpDiCPBBmH3x2pJX8c+uKHrEixUFJqQ451
         8HZMXcbjJoAgPW+QZbtnOc4J+b2sinXNbFamDEqsn+G7hHgL1ZGjBN4PFh6LT/KZqHRL
         iOi0PfVhvtUnQTS1xh1Oj4wtq9z1Xr+Tu8Niiz7OV2zgiJaLmm9H65EKsorEfZ7zqtiG
         sk9ewa93Mb5ToLGgrAb+hJg5i3TWBdpfWIk7RK5cPmCSy9/xQix1Kimq7YPYI8PMlpGj
         ntsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Rp4Vw6kq;
       spf=pass (google.com: domain of dhowells@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1687560956; x=1690152956;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Kupgf4laEPit7ZBosecc2Bt6pWVgdXs25oRFirW8BMI=;
        b=DcF9tU3gswZuWL9GA4FPOPWfKFqXAHqa4Jk8X9mO/9DxjnXCGV9Gf45TTe6r1xTZ55
         FbORQ2hckpdLYqHRpNzkbpelw21W94DX3joSPcsIZNjN52L6E90sI91oXblO+B6VpZdJ
         BDF83sSN9O304fPtzg1wTkrZcTJjgENF5LplKTevYfSZUtfupZx4MzQXAZB7otgqOLIu
         0TQRCf4+g3jeHxV0Uz6dUSznOWOJt95GLfJx19nvyC76FNNXHhaQFx1orpzGN+Cg+UnC
         PLRO76au85kVVPVSjowD/v8pRwEnK3/P4m2TvZQmHsJK2zy3ergwK9QIKqb7WIHtX7wH
         lcKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687560956; x=1690152956;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kupgf4laEPit7ZBosecc2Bt6pWVgdXs25oRFirW8BMI=;
        b=eNOgp4pVqNJe1GDuuIqIo6LzBBpWkJd6+VNXIAEJi2op9kFrgdJ2m+ZjoKKiM24hHF
         AJzzjsZiyR1PrYYTTgSdSWYlKxlgyolAQmpIU7I+x8iTHc2qhDgQpOF9og9P4ndgQmbD
         Xg1JIIrIRlyubK3XxaCjhC8/lOmx54IppmB8B+UJN3uGwRkMaqXF1dyN4mu+Ia49RB+B
         DwYVqUnPTT/zXStA03Op8oFVzosGUdJWxRZqdYJWIumz04prQOuym9I0IN/iFg4l7TRY
         eExR+6SzPL3G+9ZX7VnD83mA/SWBQBTdoYMGGefRxJBltDC/wIa2DDHjLV2auNAzdw9C
         BwzQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AC+VfDw4GcYfcRGf8bLmouhILDmlLoxBadWax/6ghvvHg189a4NjlAE9
	18lXcKpK6fWmuYd3MWlaR3U=
X-Google-Smtp-Source: ACHHUZ5dTNWoK5TEFhyQHy9LlZTLz6zZG0XADHBqxFiIXUyoNQrLd+f1LYkKrtkGuLzT/rWLVGiLWA==
X-Received: by 2002:a2e:3211:0:b0:2b4:7d83:c80b with SMTP id y17-20020a2e3211000000b002b47d83c80bmr10778412ljy.13.1687560956206;
        Fri, 23 Jun 2023 15:55:56 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:651c:a0b:b0:2ac:81ce:1bc1 with SMTP id
 k11-20020a05651c0a0b00b002ac81ce1bc1ls382761ljq.0.-pod-prod-04-eu; Fri, 23
 Jun 2023 15:55:51 -0700 (PDT)
X-Received: by 2002:a2e:8802:0:b0:2b4:852d:873c with SMTP id x2-20020a2e8802000000b002b4852d873cmr8915472ljh.11.1687560951810;
        Fri, 23 Jun 2023 15:55:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1687560951; cv=none;
        d=google.com; s=arc-20160816;
        b=WhLPzFLa+KqVczdodJNNxkZW49Qvk7OOykthXbfMy2JpE8seBARK1OLxOHKr5nkdtt
         4NxoWsDFL0ygX5tJe+4Nni82dF96rPhOcY9J077V/xFlR7ug87+sBFZaSLKdEao45vQ2
         c+n85gCWiwUMw88LzQCthrsQD1BXz21s6ins28h48E2PfehLIN9ak0eDFk02HToRWF4X
         8Mq5nzf+vpVKxsNuYtZ4EIyrITMdzhFiQHcQZtrRUx9m0zdURHEevQxzwvhf5HTSq/cX
         DBXDzkVWA7yuQaVbnPjHovY9Zoi/KZqU2NHqXnNT4rzG4fi90y6F9LeitKFaTg0Sc43F
         F/rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=3eD9cwJhfzpjqArgDx6+FQer5AVxYbVfQjKZhNYJ+UE=;
        fh=SytHx2J3DKjvQ+G4K++xLSz0mCvvnevzsIlS5BVAryA=;
        b=pLBu1mgrO9k4jufKHugx3st7OWPqpyrAMuIHNwJPLd5bIY/VCXAP8FE91vFg/772rR
         sBLqhIBX4X7722yIydcMgTQp3zlr1udzH19ohR0khxRSIIkjTzZj6L7zvhiuqp27kK3A
         Rs4DBKJUCtc77rPGVSJJgq2n8qfE+Ji+j6op1ypv7Gy9AobkEk92Sneq6iFaVV2+HINF
         V1KRPJd3QxcPQSQ032BrcaRbSi8wQA5iSzCHZwz2eFHdYkY3QHv8daBVJzD/8dRYO49L
         mebmMXvUtuod0VpsNnUOleKtdcCPE5u9OvGLWDsN3xkhweEDMepaEHEpAoag8lxm442o
         hQPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Rp4Vw6kq;
       spf=pass (google.com: domain of dhowells@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id b26-20020a2ebc1a000000b002b15301db48si3869ljf.4.2023.06.23.15.55.51
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jun 2023 15:55:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of dhowells@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-632-PTJ_wQD9ObaVu43jKmpMaw-1; Fri, 23 Jun 2023 18:55:49 -0400
X-MC-Unique: PTJ_wQD9ObaVu43jKmpMaw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 17CAE3C0BE35;
	Fri, 23 Jun 2023 22:55:48 +0000 (UTC)
Received: from warthog.procyon.org.com (unknown [10.42.28.4])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CEDA91400C35;
	Fri, 23 Jun 2023 22:55:45 +0000 (UTC)
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
	Mike Christie <michael.christie@oracle.com>,
	Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Al Viro <viro@zeniv.linux.org.uk>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	target-devel@vger.kernel.org
Subject: [PATCH net-next v5 11/16] scsi: iscsi_tcp: Use sendmsg(MSG_SPLICE_PAGES) rather than sendpage
Date: Fri, 23 Jun 2023 23:55:08 +0100
Message-ID: <20230623225513.2732256-12-dhowells@redhat.com>
In-Reply-To: <20230623225513.2732256-1-dhowells@redhat.com>
References: <20230623225513.2732256-1-dhowells@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Original-Sender: dhowells@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Rp4Vw6kq;
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

Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Mike Christie <michael.christie@oracle.com>
cc: Lee Duncan <lduncan@suse.com>
cc: Chris Leech <cleech@redhat.com>
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
    ver #5)
     - Split iscsi changes into client and target patches

 drivers/scsi/iscsi_tcp.c | 26 ++++++++++----------------
 drivers/scsi/iscsi_tcp.h |  2 --
 2 files changed, 10 insertions(+), 18 deletions(-)

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

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230623225513.2732256-12-dhowells%40redhat.com.
