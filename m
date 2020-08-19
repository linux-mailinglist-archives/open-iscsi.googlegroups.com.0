Return-Path: <open-iscsi+bncBC6MFJWO34DBBV766L4QKGQEOMHJTIY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id B98182494B8
	for <lists+open-iscsi@lfdr.de>; Wed, 19 Aug 2020 07:57:43 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id d8sf3698460lji.5
        for <lists+open-iscsi@lfdr.de>; Tue, 18 Aug 2020 22:57:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597816663; cv=pass;
        d=google.com; s=arc-20160816;
        b=KHMMYbuj85kEs1EPZvOYc5F3kLEYSsbAoYHeUeUUV/nFasfLU0Xt/1vDoytdsWCrHv
         CoUEfOxcKfxUNdrNuScUz8hogiK5NCOlSB1nPZAkipWOeD4aqnDfo/VlnzKs5kMR35UX
         JaqQ87KJpAQSo8ZXrDgAftuAz3DLdikG3Kf+22S0zbd2Y9rrqH2iF/Ix5B6z5S6dsSAv
         R59Ia0R5TbImJKKVjWdbSBxV+T/TivtKRZbdviXGv6vcVXlfGW56QeZWdop3UpDCnojX
         wlmAgxPZvB4uh8S2ey6faeHYE1Ttzv41OMJ1oHOnCZkaGEoFe/El/orkwaftR51XA4pi
         6J/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:to:from:date:message-id
         :sender:dkim-signature;
        bh=nApnwAHuOjg8cL/LNdZxODFV2IyTygfAcq9y+e5GvPM=;
        b=ySqAsXR+QV+lfmZQCz1Su4Vu1oG/m3Ow0yviOK0somVIsxHB+CaDt5iil/C5Z3nIJg
         atySBSPBXAlZtfSB/L+3re5NKRfZ5zLW3+5kSNGBTxml0fLiSqYq5YcIE/dkg/JGfVkP
         F1msCP5kYleNeZ2i/gdkLiWX1GxcCUAxHfVKsBqy+jjsmWrLnMPNLEk6uqkS0OSDHjmx
         Qm2dPpssdBRX+33wnRB/1Q6L0HV8bSpHccTecR4FtV4R+fNMS9jfszrvQDH5eEaWUcMr
         EDM4KX8gvNVptmhLr/uy1LejfCpE8rPwYZj0W/SpJwl+C3Ygri3ljDJLp1NsEJhFhRT1
         CUuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.146 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=nApnwAHuOjg8cL/LNdZxODFV2IyTygfAcq9y+e5GvPM=;
        b=qUJ/FpSHeR5xSjxfuPhqcRp/Ri/nAJrR53SeqRg39AWNtQj9D6LY1PQgpBClU/35yA
         +Uy0S9L1YgqAcfubiQucUsmM1kHI07D0zaQ/cirE5Kd8JqtFNGjukOzeRKM0StKwVL01
         9CBAcqeTqGTFFADGarvrhqPoI1S473BBq5s7LMQXMExgaiKjWmYFz9I8LTWEE0EHI8Y0
         7s0OBvhWOmT9QNEj6AVQ3d3gLH5KxF/aJ+H5Nq1J3m6giC2KeA5Sn8k4Xmk3tbEXIagZ
         fbEl+Ub8EDqOO1xnt3oTi1KUocF6kwD3mcqxYYtAApfupzqb8uuSzUiYwvt410QuV+AP
         qLMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nApnwAHuOjg8cL/LNdZxODFV2IyTygfAcq9y+e5GvPM=;
        b=bXr0sFn0s3HQZcW8RlLK3OYzAYT0h17HyaV2TqEZgML2TDvtWzU596h3Drl3rAkLZI
         HnlgZtjJfFpcuWNM8WjlQ15cY7HxBe3YBdvMwaueRvHclUm+qlsrn3XxozR2+eim2vTB
         R/sCCiFvK5hMAvWmLx9+j2RkkK6XHOkYeb4IBdOH6qnguWLmuMZEQOnqQXKRdngMv0q5
         JN7D3UKz2QQzz4VL4uHW/t80HpANAeGUsXp9eenXvNKtz38PPyduWGtJoebOl7nxSUY2
         oAlutf0icFKLx3EM9n9Q+HPeSeh3wGHRZ4Fr2l0447YIpcMGuSyNR0VzyGxRPlxIsnPu
         AJ1Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5331S+Et7XH0Vnayot4dCdQR3G/cq9wKxljseQ1fWUzHHnOGP5Fp
	1kPGfmKq0S5J8uUJgVusaEw=
X-Google-Smtp-Source: ABdhPJyEv0i4y1Kj35wl0OpHyJkpkzLqSwAUutcoDKn+krbk/N+uhvT80PWYMXFgkXNvRnPTJ7ul1Q==
X-Received: by 2002:a05:6512:358c:: with SMTP id m12mr11360306lfr.18.1597816663253;
        Tue, 18 Aug 2020 22:57:43 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:2c01:: with SMTP id s1ls18129ljs.10.gmail; Tue, 18 Aug
 2020 22:57:42 -0700 (PDT)
X-Received: by 2002:a2e:958b:: with SMTP id w11mr12004284ljh.370.1597816662537;
        Tue, 18 Aug 2020 22:57:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597816662; cv=none;
        d=google.com; s=arc-20160816;
        b=mqCpvco92wK7RQPVvwR2WEz3vq71Ij3t+mnrJEz9PWWZw7MVNoqtIZJXvypGwMt+VN
         W+su1IQMCpCQmVkzzMkeDhkW9XUG4/ikepE65u+/I3N1ge0a2hIr9ttJ5N3wxVRDPnGM
         SHVbzP0QRvtq2BD3MZapJpoAd2fm11MQN1C+z6UQeHJTKjFi5SuIrDoU6xjm/Oi8rfzz
         gWXFzHpdmTchatYZnpp6Bf9LIOiHNfOgyDFJT19xCt/ierufaN0bANbEUIIy4RY/iLWQ
         DO/TrjZ/OIC2WpGEMRH6SjzUtxStH0NFRZ9pM/aK3/Q8rMrZGU+m9EnwHg9bTLs1OCFx
         Ji2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:to:from:date:message-id;
        bh=qIf9aJiCZP91rrwB1w4VXkSW2lobME7Rw4afAHLODIU=;
        b=qaHVYUFkSXQd3vkD5HROHuig+UbTL16WGCWdZCjB9H+78tqaVq4MpBw7Rf/9w65KGZ
         c3PU0jvUOBKTOmYWd+KAYkknSmXN3cbLbksPot5GgY4ynEoXF5/+8mJ0VbsMUA0On+ed
         1kbCfapWQRGSymX30unUrNBFlkF57/z7vRhhTwvD5r/bVBKKNI5nnLCAwZaVm8Uf4Bgv
         yhK1PzK9ZMpdeEHzgFkZNqCkIJ6AjUQnXDSZ1kyKEnjjtTjRxqxX+eoMzYRwBfIdGUki
         iJPARak0JLp6CAiirTYics2WJaB4mX2odYd49FQGNjzDJObrf+tLkV0PV73BlqoeCKl6
         OAgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.146 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx1.uni-regensburg.de (mx1.uni-regensburg.de. [194.94.157.146])
        by gmr-mx.google.com with ESMTPS id a7si747461ljp.2.2020.08.18.22.57.42
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 22:57:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.146 as permitted sender) client-ip=194.94.157.146;
Received: from mx1.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 60CFB600006A
	for <open-iscsi@googlegroups.com>; Wed, 19 Aug 2020 07:57:41 +0200 (CEST)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx1.uni-regensburg.de (Postfix) with ESMTP id 11752600004A
	for <open-iscsi@googlegroups.com>; Wed, 19 Aug 2020 07:57:41 +0200 (CEST)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Wed, 19 Aug 2020 07:57:40 +0200
Message-Id: <5F3CBF53020000A10003AB07@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.2.1
Date: Wed, 19 Aug 2020 07:57:39 +0200
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>
Subject: Antw: [EXT] [PATCH v6 1/6] net: introduce helper sendpage_ok()
 in include/linux/net.h
References: <20200818124736.5790-1-colyli@suse.de>
 <20200818124736.5790-2-colyli@suse.de>
In-Reply-To: <20200818124736.5790-2-colyli@suse.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 194.94.157.146 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> Coly Li <colyli@suse.de> schrieb am 18.08.2020 um 14:47 in Nachricht
<20200818124736.5790-2-colyli@suse.de>:
> The original problem was from nvme-over-tcp code, who mistakenly uses
> kernel_sendpage() to send pages allocated by __get_free_pages() without
> __GFP_COMP flag. Such pages don't have refcount (page_count is 0) on
> tail pages, sending them by kernel_sendpage() may trigger a kernel panic
> from a corrupted kernel heap, because these pages are incorrectly freed
> in network stack as page_count 0 pages.
> 
> This patch introduces a helper sendpage_ok(), it returns true if the
> checking page,
> - is not slab page: PageSlab(page) is false.
> - has page refcount: page_count(page) is not zero
> 
> All drivers who want to send page to remote end by kernel_sendpage()
> may use this helper to check whether the page is OK. If the helper does
> not return true, the driver should try other non sendpage method (e.g.
> sock_no_sendpage()) to handle the page.
> 
> Signed-off-by: Coly Li <colyli@suse.de>
> Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Hannes Reinecke <hare@suse.de>
> Cc: Jan Kara <jack@suse.com>
> Cc: Jens Axboe <axboe@kernel.dk>
> Cc: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
> Cc: Philipp Reisner <philipp.reisner@linbit.com>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Cc: Vlastimil Babka <vbabka@suse.com>
> Cc: stable@vger.kernel.org 
> ---
>  include/linux/net.h | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/include/linux/net.h b/include/linux/net.h
> index d48ff1180879..a807fad31958 100644
> --- a/include/linux/net.h
> +++ b/include/linux/net.h
> @@ -21,6 +21,7 @@
>  #include <linux/rcupdate.h>
>  #include <linux/once.h>
>  #include <linux/fs.h>
> +#include <linux/mm.h>
>  #include <linux/sockptr.h>
>  
>  #include <uapi/linux/net.h>
> @@ -286,6 +287,21 @@ do {									\
>  #define net_get_random_once_wait(buf, nbytes)			\
>  	get_random_once_wait((buf), (nbytes))
>  
> +/*
> + * E.g. XFS meta- & log-data is in slab pages, or bcache meta
> + * data pages, or other high order pages allocated by
> + * __get_free_pages() without __GFP_COMP, which have a page_count
> + * of 0 and/or have PageSlab() set. We cannot use send_page for
> + * those, as that does get_page(); put_page(); and would cause
> + * either a VM_BUG directly, or __page_cache_release a page that
> + * would actually still be referenced by someone, leading to some
> + * obscure delayed Oops somewhere else.
> + */

Actually I think this comment is somewhat mis-placed:
It should describe what the function does (check for specific properties of a page), but not where this function might be used. Most notably, because the use (from where it is called) may change over time, while the function will still do the same thing.

> +static inline bool sendpage_ok(struct page *page)
> +{
> +	return  (!PageSlab(page) && page_count(page) >= 1);
> +}
> +
>  int kernel_sendmsg(struct socket *sock, struct msghdr *msg, struct kvec 
> *vec,
>  		   size_t num, size_t len);
>  int kernel_sendmsg_locked(struct sock *sk, struct msghdr *msg,
> -- 
> 2.26.2
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/20200818124736.5790-2-colyli%40s 
> use.de.




-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5F3CBF53020000A10003AB07%40gwsmtp.uni-regensburg.de.
