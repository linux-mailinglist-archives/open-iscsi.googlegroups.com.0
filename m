Return-Path: <open-iscsi+bncBDLIXLMFVAERBTX4Y2SAMGQEQCD45MI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E00736F5E
	for <lists+open-iscsi@lfdr.de>; Tue, 20 Jun 2023 16:57:21 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id e9e14a558f8ab-3426ee45975sf15835335ab.0
        for <lists+open-iscsi@lfdr.de>; Tue, 20 Jun 2023 07:57:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1687273040; cv=pass;
        d=google.com; s=arc-20160816;
        b=V8TdLwqLaYg4KOPeQOp5gaLd7KzPhACmdDDDc9FM9XbPR0Xw1ed4nzrzO7cCO2nvif
         gsrm/pu+X0NEYQYJMA0RqaS95aKXp9PqBGBVLNbUneugMYoTIAk0OW0uB+hy2AeFSyMj
         LyGMoOlmsOIb8k6pzaw1fFeD74kjyjNBz3227Q2EMF9uo0OtLYcqh4bgnsx/K8+LqEs2
         1Gu9nmW48RZu4nL0Wpzdjsz61grFrkwPXTKTmbe3rd/x7UZhauBjPaWqAP9OLrPNZKCf
         QSBO4rIbS0LyoSbigyKAI4IMivwwV7A9EtQjZjrqqhLxWnSVKmu8YDA7TiaU0kEIDDor
         6M9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=B/GN6xos2TxqnkeiAZVBb79U6HW+uCkc8QvfjRPn5MM=;
        b=SzRRSpy31YHbA+LGGYPRJdy6TNx4JK9BM8zWNsI9P8M8wO2F1HiKV4bXWn+nndv8Nt
         vYczDSYsrzKRdE4FqMC3rQCzzemADenKm/Nbf9lJ08zNA4Eek1zdfsPyh2wtMkiGySl7
         pL+sUGp0szA6445sEoB+mUQSjNW7eUBM13E5JH+qmzPW6Q9OS5H0o5vVayjqij6tuKlx
         a0EzhpnwySAgrnnN/2AoOEcwNiM7zMV4Eul4JVPc2UbFVxQd5yd0pMqou1H/illAy5/L
         h0MHwCrjBOcXQ1V7Rin5qfRwqkF7RpDCK2uSUOa/I0CCMibbdENDlgDT6LextjnARht7
         uIsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Tm0JM7GF;
       spf=pass (google.com: domain of dhowells@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1687273040; x=1689865040;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B/GN6xos2TxqnkeiAZVBb79U6HW+uCkc8QvfjRPn5MM=;
        b=sbE8+O+GIXWlxvvV9rDCsn05J3P2NGgTLYNZXtvjmHi9KCWN1sMvUyq21DAZQXnXFH
         anOZxVcpw0LoF1wOLsK+zuBCQYn0YqFTxv1v9wC7G4tJQpndLL8xOmasS7pNu0rsfud6
         vus7zuMpidixBqBODopyhoM/up2pmMQ8HdFHjSmxfKKbUQhblDor957Q6OI4hKoX7TpY
         PKSRih/rUKJggBDrPzw7WjdfLurDjdqIpMpWS85Jbs/j91Qcgd9ifRqjCqqmGbqveZ6I
         axCghjj+afofvVXCs2K3QGzzVjmB/nfglQ6gGsp29/HjKQSkmFqX5TUU0Qh50t3OTAD+
         D3CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687273040; x=1689865040;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B/GN6xos2TxqnkeiAZVBb79U6HW+uCkc8QvfjRPn5MM=;
        b=h1R9sT4pd7Hi7XaKWWcJDtsrk0uvV9ewVWl0gwSbsFRziwLCxfgFnOiBL1i0euVNzo
         UZe5KStKn2Y/82dr+3Fx3E65Ye2SD5oPzaSyA/dVnzLVEQo2T705VF1LfooBnBWQCd4+
         FkKkYm0uu+D/FlIxx787yhNz9154bFSf5tiJ4eGDvpJF7b2IllcFOEi3pCl/4fPzsHBR
         aL9lQD9sFsJKSzfvDR/qYHIaIZL0jafMIEePG9YhQoLrSGNid2ub6xehAA9vZiWm7gnl
         CnYWmZKQAdxMtHzQV3nQ76kzoa+xZpQhkGvdfw2pbUHpkKxhWlXE5mvgPvcF0WEkU6sz
         j/CA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AC+VfDxjxGaiMAgQqBPc2xMY3NAKeNith2H3rp6dkJmPDMD75VYs4BB5
	jX8altszafnUyOCqNu43EUc=
X-Google-Smtp-Source: ACHHUZ5MzBU3b45jtecSy1cFpiDKjzQW28/gg7nv68hKB2Xr8pJEDIoPjIg1YzmKqrrIJP/qqG/xWQ==
X-Received: by 2002:a92:c98e:0:b0:335:1ed:359b with SMTP id y14-20020a92c98e000000b0033501ed359bmr4108770iln.15.1687273039983;
        Tue, 20 Jun 2023 07:57:19 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6e02:130e:b0:340:5d8:9a53 with SMTP id
 g14-20020a056e02130e00b0034005d89a53ls1107544ilr.1.-pod-prod-09-us; Tue, 20
 Jun 2023 07:57:18 -0700 (PDT)
X-Received: by 2002:a92:d141:0:b0:343:13e1:68ad with SMTP id t1-20020a92d141000000b0034313e168admr4214186ilg.10.1687273038166;
        Tue, 20 Jun 2023 07:57:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1687273038; cv=none;
        d=google.com; s=arc-20160816;
        b=AvMf+SiDmeh00fAY5Ov0tJ6BSfyaLUKZISZ7nx1fZ3E7tIm6IE+QB4m4r57Qozaj2i
         dWrJsZNczUs/QEUiGgaKfNh0NsE4EqEGJn5Xar7iTzMXRm5fUTnKpyuYegjtznqLwn76
         wVz6YA1ju6F3VsDvBBUqqD5vyGHX4uRBXlewB1mf59CYptjo+3Iu+T4R5mVmnHhg5KBJ
         ZhwYVaY/Ccn/loR19d4uR7XDBf9WQ0bQk5spMPXaGzhk/cEr1obE3ncJxiYBz1VE43Cx
         zhY55PMAe9o4yaG4ZF5hyJu8qgNEm4WDRKp+ey4Ubbl2VsJ6B1cfL3FsRe/7qynEMlAS
         e0+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bszGYXAPCfyFrCrKXBgf4DyEzlv1vS1+csO6wWtbX4c=;
        b=SgFs4QzdCJW4Ol6xX0tIhMW/cC6ElKgoeXTdMp7mNUuyAlFrm7n7bSkr7KT/QFQkGs
         sCUCLfqGJmM9VIUjqOyd+RMbKPLKWehF9ddlWcrv61WsGH1E4W8A93Xk7fkBjEzZjSQD
         5AKNpkDLb5oXUaf412JwOPLcci7CTf1X8L0ncGFch4HrXnasPE9LZ6XCpeAZl1PLmtdj
         d8Y5C1VEUUNzLG05ZVDV8Kyd6s3S2GtgMkWdBJwnw6YupFm73UgMYKjzEHihOeSNZrtv
         vWuaq8C33N3WcARntC6q9zUg9/BkC6UtbYtmxHb+mOHE9r8xogxTWXCcfVa40F+ICfVM
         87tA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Tm0JM7GF;
       spf=pass (google.com: domain of dhowells@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id n14-20020a056e02148e00b0032e1027cbf4si202306ilk.1.2023.06.20.07.57.18
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jun 2023 07:57:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of dhowells@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-180-5iBq3k2zOLaeVvGBHbh90g-1; Tue, 20 Jun 2023 10:57:13 -0400
X-MC-Unique: 5iBq3k2zOLaeVvGBHbh90g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 176203C1BFD2;
	Tue, 20 Jun 2023 14:54:42 +0000 (UTC)
Received: from warthog.procyon.org.com (unknown [10.42.28.4])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9E84B422B0;
	Tue, 20 Jun 2023 14:54:39 +0000 (UTC)
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
Subject: [PATCH net-next v3 16/18] iscsi: Use sendmsg(MSG_SPLICE_PAGES) rather than sendpage
Date: Tue, 20 Jun 2023 15:53:35 +0100
Message-ID: <20230620145338.1300897-17-dhowells@redhat.com>
In-Reply-To: <20230620145338.1300897-1-dhowells@redhat.com>
References: <20230620145338.1300897-1-dhowells@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Original-Sender: dhowells@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Tm0JM7GF;
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
 drivers/scsi/iscsi_tcp.h                 |  2 +-
 drivers/target/iscsi/iscsi_target_util.c | 15 ++++++++------
 3 files changed, 20 insertions(+), 23 deletions(-)

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
index 68e14a344904..d6ec08d7eb63 100644
--- a/drivers/scsi/iscsi_tcp.h
+++ b/drivers/scsi/iscsi_tcp.h
@@ -48,7 +48,7 @@ struct iscsi_sw_tcp_conn {
 	uint32_t		sendpage_failures_cnt;
 	uint32_t		discontiguous_hdr_cnt;
 
-	ssize_t (*sendpage)(struct socket *, struct page *, int, size_t, int);
+	bool			can_splice_to_tcp;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230620145338.1300897-17-dhowells%40redhat.com.
