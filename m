Return-Path: <open-iscsi+bncBCYMVIPVXQMBB37E5SSAMGQEIMQW33A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id E79417403B9
	for <lists+open-iscsi@lfdr.de>; Tue, 27 Jun 2023 21:03:13 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id 6a1803df08f44-6238c3bf768sf56108546d6.0
        for <lists+open-iscsi@lfdr.de>; Tue, 27 Jun 2023 12:03:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1687892592; cv=pass;
        d=google.com; s=arc-20160816;
        b=zicBsNMKnAyUz6kinLt2pEBs2nvp3wzHkFQcZfC3xUVh0nZJyovz+1kuS6EN/Pw1ak
         ZTzdL9l6fNEaIpgSJqAGQWfuyIL2c68/hKFdrSAskYj0QUxEp6khfqV//wI3hBnPpIgV
         aEuvZOrI5Kaahc2FtSJ5k1wKIBpTAySvTYpaVfq9rHarsyQJLyYdBcklHNsF9K95A1Ou
         C+MJp0lnESat6W9y1Lig17KFMqA3gva/dRXaRVGw0rt3ztV/t61jndUt1l3SfW0cLZLc
         /HFT2LJTrMTKjkrOkgC6eDZQf7rVmA657D7dsEFgfipudV/+Wod2HZGxbcki8GmvP/al
         tKTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=1y3nW+9k1idO1Vn4KcQtFMuTp0tzwA0EU+MiC29H5i0=;
        b=myHgjvugYWPaLnoglNyGII5inmJ3cDM4NShcY93dKaXNv77tyixmn2CVyZ5IXz7Dzh
         c4qd7MUYHN8P0Y78Y9oS6zcoIr7KwvQgyRCx7LVPvwMLLwn3b6qp0ae1FLkTc+jE3MZg
         Qf0trTtZQSP6j05BaCVLW4KjWiUK3a9q5cpoD3FAO495dmZnP0nSgeAn5hPFeSkosOW5
         Ur5wT+L9jF8TZ9WDNzu3QHRHvCM4Zq4kJxeO3NkLidrHuCkqO0EffftgTFJLZyPETOzm
         8sLCReBOtmDB59HaLfvMJ3pESYDn+dJQcgg7XDAJ0Fbh39+swtxaqpvozFmQy3h6lmv6
         tPOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MGBkQd8Y;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1687892592; x=1690484592;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=1y3nW+9k1idO1Vn4KcQtFMuTp0tzwA0EU+MiC29H5i0=;
        b=SV79JoHEDH0WqYXSnAMFxeYxuHmRy6ViFlrkjj/QWjlcnIadQzo8RomhDVxVQTK54o
         OLN+wMqyh6uj5YPaoXXQxdVI7/1+f72kVGD/XUXGUHKI9QI+Wq5qcuhWmffflDOdfGip
         jOFaUUS37Ou7uJ1emlIoR2GtK2fNdmfzhODmSjhIH4aAyvO9jg1xs5SNPRX+HgMGjA7l
         ibSkrTyiZMprxab/vnjdZePbURO+3P502dJPNqiRV3LXTltqX41oLgFFrngQXKDkHuyW
         doQwxzB386LWGdMSjCyVG6NAt0WdvyrBMlbIjVvVnVbV/hXloULdt1XQhs4s7+8w6dnF
         vMnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687892592; x=1690484592;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1y3nW+9k1idO1Vn4KcQtFMuTp0tzwA0EU+MiC29H5i0=;
        b=BmR6oWELZZ3mAWpOs5qYIkqB17ZRNGxebColqOKRIe+nDrK58wQo0s0gWJqO4Vv7i6
         y/qvkyvmdhIZn5s02MmBfX5oIFQFRjCFPxSqvp/TUUDFw5ActpeNfp0BJOg6vK89wAA2
         ra+uWztdJajNoZ+mivO2Z2Lheh4v1bhy4lC691CR8kJYi+pqXstLuJ0J4LeH8OX5BEly
         KT6PAyTOVqwGuwAWB2qqQFoZ4faonhTtO7FHFCQQMWG9TykPO119viF1Z8TBEsdAqo2a
         o848Fawy2RvJmNLNCBiEbg6JNRtoDgM+CkQSTweZ6JGi3TcLBxOJU5YZccFWPiSU3zZx
         Uv9w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AC+VfDz8Ahx1es0xoke1ahNRd/RC12B8EtBEQJfi6p3I930hpnrUxW4R
	d4CPZkdIldFNza5X39LZElo=
X-Google-Smtp-Source: ACHHUZ7SGAqaVIF45x/fFmhSDEMGz3V5F0l17dL23dJKm1O6a3ik3HzMN0vtUzJhVFmV2Woo8yqTOQ==
X-Received: by 2002:a05:6214:1d0a:b0:630:1342:1943 with SMTP id e10-20020a0562141d0a00b0063013421943mr35554467qvd.62.1687892592613;
        Tue, 27 Jun 2023 12:03:12 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6214:b23:b0:635:f50d:1c05 with SMTP id
 w3-20020a0562140b2300b00635f50d1c05ls668140qvj.0.-pod-prod-06-us; Tue, 27 Jun
 2023 12:03:10 -0700 (PDT)
X-Received: by 2002:a05:6102:2453:b0:440:d2f5:e36d with SMTP id g19-20020a056102245300b00440d2f5e36dmr9214289vss.14.1687892590629;
        Tue, 27 Jun 2023 12:03:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1687892590; cv=none;
        d=google.com; s=arc-20160816;
        b=oRbSx/9JqxG+wYZgLF4GOT/3NODYfB+ZWFn3ULmDvz9X2tQPXVp4pa1phsxliPE4Ov
         ejNdKSkgsb6fuaHg87e0ZHiZDCT0D+NZCO+Cb3N4xnfK3Ve9pUEbzRnMVqP+Q+wYcTnj
         QRL9aQKf1y2IcHxV+tLl1I0i+75cPVnBsQqR0dEEExPCMvPkuF+1b5Sz8wXJWt/9J+4T
         deirPylvXa56uVzGs3hexpq46lFi7vycwyvWvd2ry6x8gw8uUGkZVUT3KBKj4A4XXTmI
         53oYj0o9rWSXHinQMulLVuAzR3pIeMnoJciOlgqLOUVs6enR7+jZ7KNOT3XUkRNIFxem
         tYhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=sCI/D1beeMuSDdc7buAbwdUV7v4DV3y3fmbUulZO5CA=;
        fh=RTlCA0b1qt778l64N5ASJci/FzSYjAPqpTWFLdEn9XU=;
        b=1Fx/E63cbwfee4SpVzANofaFw5XgaNmbsbF5GFV2csxGdbEcE8HT8ChY+3opvYvrhE
         kq6CabKzGp91BkVU9zP6HDep1j5GVL7XhJX+YCuKAxkiPf4mLMN5LKwb0eVkRR5FKPDw
         k9fqrRnAZJewjFqKxVEdtbrdmsFsQkrXaF1wcYdbomLOH3y4Fo1ntHXISNGb+NJfQCpb
         gER7Jp+prE4kxHWVeqFUEfyyzKPPy3I5/107pQ9g56lQlgbfwlFctvDwY1LghmjNRdsu
         jlZ+aI5OzPYspuBnNjbfWF2a0/5aKpbGB5cZvHMBDJZfwqGHIYIxfZb9CkKXEilJlAGS
         ZuyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MGBkQd8Y;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id g18-20020a05610209d200b00442107d8082si722463vsi.1.2023.06.27.12.03.10
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jun 2023 12:03:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-6-ArLMsJJIOvWM1THfmZi-ew-1; Tue, 27 Jun 2023 15:03:04 -0400
X-MC-Unique: ArLMsJJIOvWM1THfmZi-ew-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C760328088B1;
	Tue, 27 Jun 2023 19:02:44 +0000 (UTC)
Received: from toolbox (unknown [10.2.17.15])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7AEBC200A3AD;
	Tue, 27 Jun 2023 19:02:42 +0000 (UTC)
Date: Tue, 27 Jun 2023 12:02:40 -0700
From: Chris Leech <cleech@redhat.com>
To: David Howells <dhowells@redhat.com>
Cc: netdev@vger.kernel.org, Alexander Duyck <alexander.duyck@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
	David Ahern <dsahern@kernel.org>,
	Matthew Wilcox <willy@infradead.org>, Jens Axboe <axboe@kernel.dk>,
	linux-mm@kvack.org, linux-kernel@vger.kernel.org,
	Mike Christie <michael.christie@oracle.com>,
	Lee Duncan <lduncan@suse.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Al Viro <viro@zeniv.linux.org.uk>, open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org, target-devel@vger.kernel.org
Subject: Re: [PATCH net-next v5 11/16] scsi: iscsi_tcp: Use
 sendmsg(MSG_SPLICE_PAGES) rather than sendpage
Message-ID: <ZJsyUK8DMN+P0nQo@toolbox>
References: <20230623225513.2732256-1-dhowells@redhat.com>
 <20230623225513.2732256-12-dhowells@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20230623225513.2732256-12-dhowells@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=MGBkQd8Y;
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

On Fri, Jun 23, 2023 at 11:55:08PM +0100, David Howells wrote:
> Use sendmsg() with MSG_SPLICE_PAGES rather than sendpage.  This allows
> multiple pages and multipage folios to be passed through.
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> Reviewed-by: Mike Christie <michael.christie@oracle.com>
> cc: Lee Duncan <lduncan@suse.com>
> cc: Chris Leech <cleech@redhat.com>
> cc: "James E.J. Bottomley" <jejb@linux.ibm.com>
> cc: "Martin K. Petersen" <martin.petersen@oracle.com>
> cc: "David S. Miller" <davem@davemloft.net>
> cc: Eric Dumazet <edumazet@google.com>
> cc: Jakub Kicinski <kuba@kernel.org>
> cc: Paolo Abeni <pabeni@redhat.com>
> cc: Jens Axboe <axboe@kernel.dk>
> cc: Matthew Wilcox <willy@infradead.org>
> cc: Al Viro <viro@zeniv.linux.org.uk>
> cc: open-iscsi@googlegroups.com
> cc: linux-scsi@vger.kernel.org
> cc: target-devel@vger.kernel.org
> cc: netdev@vger.kernel.org
> ---
> 
> Notes:
>     ver #5)
>      - Split iscsi changes into client and target patches
> 
>  drivers/scsi/iscsi_tcp.c | 26 ++++++++++----------------
>  drivers/scsi/iscsi_tcp.h |  2 --
>  2 files changed, 10 insertions(+), 18 deletions(-)

This seems good to me.

Reviewed-by: Chris Leech <cleech@redhat.com>
 
> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
> index 9637d4bc2bc9..9ab8555180a3 100644
> --- a/drivers/scsi/iscsi_tcp.c
> +++ b/drivers/scsi/iscsi_tcp.c
> @@ -301,35 +301,32 @@ static int iscsi_sw_tcp_xmit_segment(struct iscsi_tcp_conn *tcp_conn,
>  
>  	while (!iscsi_tcp_segment_done(tcp_conn, segment, 0, r)) {
>  		struct scatterlist *sg;
> +		struct msghdr msg = {};
> +		struct bio_vec bv;
>  		unsigned int offset, copy;
> -		int flags = 0;
>  
>  		r = 0;
>  		offset = segment->copied;
>  		copy = segment->size - offset;
>  
>  		if (segment->total_copied + segment->size < segment->total_size)
> -			flags |= MSG_MORE | MSG_SENDPAGE_NOTLAST;
> +			msg.msg_flags |= MSG_MORE;
>  
>  		if (tcp_sw_conn->queue_recv)
> -			flags |= MSG_DONTWAIT;
> +			msg.msg_flags |= MSG_DONTWAIT;
>  
> -		/* Use sendpage if we can; else fall back to sendmsg */
>  		if (!segment->data) {
> +			if (!tcp_conn->iscsi_conn->datadgst_en)
> +				msg.msg_flags |= MSG_SPLICE_PAGES;
>  			sg = segment->sg;
>  			offset += segment->sg_offset + sg->offset;
> -			r = tcp_sw_conn->sendpage(sk, sg_page(sg), offset,
> -						  copy, flags);
> +			bvec_set_page(&bv, sg_page(sg), copy, offset);
>  		} else {
> -			struct msghdr msg = { .msg_flags = flags };
> -			struct kvec iov = {
> -				.iov_base = segment->data + offset,
> -				.iov_len = copy
> -			};
> -
> -			r = kernel_sendmsg(sk, &msg, &iov, 1, copy);
> +			bvec_set_virt(&bv, segment->data + offset, copy);
>  		}
> +		iov_iter_bvec(&msg.msg_iter, ITER_SOURCE, &bv, 1, copy);
>  
> +		r = sock_sendmsg(sk, &msg);
>  		if (r < 0) {
>  			iscsi_tcp_segment_unmap(segment);
>  			return r;
> @@ -746,7 +743,6 @@ iscsi_sw_tcp_conn_bind(struct iscsi_cls_session *cls_session,
>  	sock_no_linger(sk);
>  
>  	iscsi_sw_tcp_conn_set_callbacks(conn);
> -	tcp_sw_conn->sendpage = tcp_sw_conn->sock->ops->sendpage;
>  	/*
>  	 * set receive state machine into initial state
>  	 */
> @@ -777,8 +773,6 @@ static int iscsi_sw_tcp_conn_set_param(struct iscsi_cls_conn *cls_conn,
>  			return -ENOTCONN;
>  		}
>  		iscsi_set_param(cls_conn, param, buf, buflen);
> -		tcp_sw_conn->sendpage = conn->datadgst_en ?
> -			sock_no_sendpage : tcp_sw_conn->sock->ops->sendpage;
>  		mutex_unlock(&tcp_sw_conn->sock_lock);
>  		break;
>  	case ISCSI_PARAM_MAX_R2T:
> diff --git a/drivers/scsi/iscsi_tcp.h b/drivers/scsi/iscsi_tcp.h
> index 68e14a344904..89a6fc552f0b 100644
> --- a/drivers/scsi/iscsi_tcp.h
> +++ b/drivers/scsi/iscsi_tcp.h
> @@ -47,8 +47,6 @@ struct iscsi_sw_tcp_conn {
>  	/* MIB custom statistics */
>  	uint32_t		sendpage_failures_cnt;
>  	uint32_t		discontiguous_hdr_cnt;
> -
> -	ssize_t (*sendpage)(struct socket *, struct page *, int, size_t, int);
>  };
>  
>  struct iscsi_sw_tcp_host {
> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/ZJsyUK8DMN%2BP0nQo%40toolbox.
