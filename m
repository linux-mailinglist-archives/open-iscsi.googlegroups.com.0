Return-Path: <open-iscsi+bncBDLIXLMFVAERB7WF3CSAMGQEFAU5S5Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 7284F73C44F
	for <lists+open-iscsi@lfdr.de>; Sat, 24 Jun 2023 00:56:01 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id 3f1490d57ef6-bcef239a9fbsf5299540276.1
        for <lists+open-iscsi@lfdr.de>; Fri, 23 Jun 2023 15:56:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1687560960; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tg5GueKXEY76Pdv+Sh9KGDeUazcNDLG6piIsw0/7U+5r/JUZuqqr0I9TOXhQj35WPl
         Ustmk0C4bQBF4ULF8lWaUyl0oXdBg5Jd+bNcE2Jy3vvzb0gn1UsynvSx6jMI4LuZfp1G
         oBsy4KmV2vrdodR/W56Sc/BH+OAomglwNw1V3JNNMi5zpiWW6Fj4+Ok9J7OJ55W86bqa
         oGI1/Um1pzOF9O0W3NmEXjDwQsTgaS3jfBg5jHgql/ne+Vdn1orUuJguhPiKdAjg+30d
         EZRrIlqz3n++TTKH1Ng7c25Hby0O+fgsPd7nof4USQsmu6WGfOsEf0xAQI7Cb1MvHiBj
         lWrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=UvkAPewNVhUi8KFkUE5aHTvgC7wy+Uk4E2npPc62BH8=;
        b=mzluaTmxNYqA4ukEg/mrHZY1LIXOTdeVOIPqKHzyYa2yUjBdfs8nJUVSKSPE7duTU/
         4sB9KKh+Y5xy+muvL/RUjG61xrv+ubhF7mGIR6iyXafv3vca+3BjFSku2jKayH4oy8g0
         aUZMzciYWh2yaN/F7ppmaPCfoiZAqmXifRgYuoPS3YQgYVPcWoIDireBK5YNLACqtGHU
         8u4IgR2FFT4VjXDF7W4saOINvEkMBZ163Yb9/wRvOcrfjQ1wn8v8PYqAuI4A7I+fy59L
         oCbQ4Eh6rqXhpUg/fTh2JcfuBgxM6qw2A1B2doKL6SbQkYBDGVK48JtOqk9YfOhIFhFW
         mXRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=B5Z65V2m;
       spf=pass (google.com: domain of dhowells@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1687560960; x=1690152960;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UvkAPewNVhUi8KFkUE5aHTvgC7wy+Uk4E2npPc62BH8=;
        b=WuqkFv35U5SQEiwd/H7qV8/FKwmkowh6HeXBfps2AwFpcUYJdyFqyzmnaHKQZVEFy3
         GnRnRkqcSISOrxS/iFWe2KWZGFf1mE8OC1NgvU4jrJJ/itx1YEaT8C/lPrpbazQAEVuo
         9trSvSoUaT5G0oI5VQeasp8f3uApAb383Ll9wNyNs60pZcEgKBabkTRFM29jXA94ohpb
         pYaWkhO/xX2RLiYKRizlUlzwkgonVj4s0Qu59D5wcW8i6ItbMhleZyuMIBP70D1RSQ7u
         BM5HFlT+sWJTptWCELY08WfuqbStVZnsU0U/UlEZbGkKAp96X5598gHKexPIan/1u3Vt
         NbCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687560960; x=1690152960;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UvkAPewNVhUi8KFkUE5aHTvgC7wy+Uk4E2npPc62BH8=;
        b=jRio47ghTNdyebCaatYLnZsknSq26VygfENcMxdj6sqrqkmQV7LW3BPxhx8MdZWM+p
         QfNBUd11WdKR6q/SL9iZDfi3Cx4dg5tBpE4WazSgND9NG5vjue+V+qRIuw80VafS3TfY
         s3WcmFFWxbMK6qBwLzIAV3T2PuDhapnTyl0flG3oworOE5IBUcYyEU7b1fuhMRc6g52b
         DwVicJ2SIInBdcKqDFd5hvXF3+tm7DEb9HQs+UWCItGSv7bgEUFojzhO+WQhpgvcF9ZY
         eNUP/96QsDKBmpk0wpW38p7WmzsrvIkVY2gf2opg0O0XRuSycGfRbLXop5JiyVxQjvYD
         0eQw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AC+VfDy+xCehiBlXSr9HZUR53El3PH74AXp22A7R2vqC5AFgdILDxHSE
	4p2c/uSeS96hOVt5EAWcxV4=
X-Google-Smtp-Source: ACHHUZ77NZseOXhzrIPY2eyD3nwMgaJRQvx2Tr3wNc6on/bMcRFqt3XVlO3xPbDJ6IwSdoFRF0T5yQ==
X-Received: by 2002:a25:38a:0:b0:bad:3b62:a822 with SMTP id 132-20020a25038a000000b00bad3b62a822mr26227143ybd.16.1687560960097;
        Fri, 23 Jun 2023 15:56:00 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:ab54:0:b0:bf3:59fc:7a49 with SMTP id u78-20020a25ab54000000b00bf359fc7a49ls1015693ybi.1.-pod-prod-00-us;
 Fri, 23 Jun 2023 15:55:58 -0700 (PDT)
X-Received: by 2002:a0d:ea81:0:b0:565:b76d:82c8 with SMTP id t123-20020a0dea81000000b00565b76d82c8mr23758292ywe.5.1687560957953;
        Fri, 23 Jun 2023 15:55:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1687560957; cv=none;
        d=google.com; s=arc-20160816;
        b=XVHcNKd22BNCY8XEcIQqfZoUz8d2qoY/6CPlSvo9PoVEUKHsymU1rTVZTTLYH+f5ZE
         DtyZ3r0hzxOKnkPCqkxDbc/o6YmsaGbFegNgOYSvcY2+ZYMr477Ju3KidPNN1GhZeti6
         uDkJqrkUEqqUlyThPglUi6qvE4qmCRq6YEX3rKrNq0ifo0nuqTmRQeVQjgshbgwvQQ0v
         rNyw2b50qDGDLNpDOYKEPneTCvDJMfTPxOikRHVNhtvsOABKQ8Db/iA8g3u+m+aJ520d
         vrW/DqQOCG4b/NBf6OdAyqkJ3UfDfc34DWIaMkgLyweXYug1Sg8obL4XXR+oONyoQSO9
         dWLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=aZHrq272u78M4jQRc62xjzOjs56TE9G5qctmKlgdkdo=;
        fh=XUChReT89AZKXR03O6N6VkxruTzZ2h/XkDMXq6NaZQc=;
        b=XDot4XGSYeu7mWlLUeYwKGWkvKb446VjP20SJC4nxfd04E1LZdkbhhK52KsOpLVBV8
         T5g4OFnQ7XRhU/E69dv3oXReo79rxD6Bw3I3mAHmtN4YZHkFFv6zef68wY45Z1YHlEBd
         ujAsF+hXP6zVmI0vg3wZlU2VOT4o4L5YySYslOVoFI9kg0GkYZlijxBmgHn01o7lhrTw
         VpsR4O2aHOZs1BM6ZR29bh2bbPazHOyxryxA8OOpiwuH/2KOXiRsaxDL7Rrb8tIwpmWq
         yH37KEhV2W3mPjU7EAynwAKkejdB31TKVw3w1FJzS3cEVKGPh6bbmJxLe8A+YgpnUrdq
         lYIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=B5Z65V2m;
       spf=pass (google.com: domain of dhowells@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id fq12-20020a05690c350c00b005705cb82b22si9138ywb.3.2023.06.23.15.55.57
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jun 2023 15:55:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of dhowells@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-90-ADNZXf0mNHmnFJ3WbtgVaQ-1; Fri, 23 Jun 2023 18:55:52 -0400
X-MC-Unique: ADNZXf0mNHmnFJ3WbtgVaQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EA1AE2A2AD56;
	Fri, 23 Jun 2023 22:55:50 +0000 (UTC)
Received: from warthog.procyon.org.com (unknown [10.42.28.4])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B6FB340C2063;
	Fri, 23 Jun 2023 22:55:48 +0000 (UTC)
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
	Maurizio Lombardi <mlombard@redhat.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Al Viro <viro@zeniv.linux.org.uk>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	target-devel@vger.kernel.org
Subject: [PATCH net-next v5 12/16] scsi: target: iscsi: Use sendmsg(MSG_SPLICE_PAGES) rather than sendpage
Date: Fri, 23 Jun 2023 23:55:09 +0100
Message-ID: <20230623225513.2732256-13-dhowells@redhat.com>
In-Reply-To: <20230623225513.2732256-1-dhowells@redhat.com>
References: <20230623225513.2732256-1-dhowells@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Original-Sender: dhowells@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=B5Z65V2m;
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
    ver #5)
     - Split iscsi changes into client and target patches
    
    ver #2)
     - Wrap lines at 80.

 drivers/target/iscsi/iscsi_target_util.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230623225513.2732256-13-dhowells%40redhat.com.
