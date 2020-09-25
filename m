Return-Path: <open-iscsi+bncBCUJ7YGL3QFBBJ4UXD5QKGQE7JBLPAI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 042DB278C57
	for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 17:18:01 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id d16sf2179867ila.23
        for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 08:18:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601047079; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rq2BhagifyFxQkvk/N/vE7bE0ZcFIKh+hudYoOcJeFASSG967hwfy+v+FXN3WFNeeq
         gzqQUFOZQKK1sfCW5Aj669IOHkY+HR0IAQw7ZZmIOUUE5oQ5Ay1bdhERJEu2p61dNuZK
         n/aCq63VZhoD0Z2WE+iBHu7iVsIC6852sBiXjpK587/WMkZL5Y0AWNIMQnQXW6vWwJCz
         d8S2x7/f8N8QXxnnqjFQ6NSeAraLDYpIBHoCA14lpZS/XAtqBLADYEDjwh4TV57YWO5/
         xZ2O6IIr+h6fxIp/Nl43Hi1Xb8Acmh+CJ267vRlqgl1FAyonRMPA1Xhj/jFJWjD94+bn
         6C8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=r/0MFcB+cP3kss2mgf0ZqgA93rxrEonhIbG1G+vVjoU=;
        b=YyD5FQOMiy/9tZDFxvukYx/OCfUJa3I9YL6t12i4CQ5hAAmX0mvktMYDYCf/i3cl0S
         LsgbqOIlA3RsZOVHAg1H72V3BjU4m3+6ZAeNHyhOC5eWX8OZxvR09iJtB+EeUgxrGjRd
         42t29f6iIApRKrXr9lCCK3N6RH/8bpaTUgsP3yYPIialZDIC/HtaU2IPVAp4/fgT6BZ+
         1QznN0l7ajy2LjGS64hMWJG5n0qM3smyvEz81OPZDrKi34IuK2HuleEK6cTurGNUWdoY
         l7AlPnjdIQJ6hlhZjW71LDUJQkYHJgbb+yIJVLd+bI5PCiTzN6zNf10+nTD/KmvA7So2
         bALw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0I0jvTv7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=r/0MFcB+cP3kss2mgf0ZqgA93rxrEonhIbG1G+vVjoU=;
        b=B/PgANA4Ykgf3zT8xffknZrtWCFnfOEOdWXu/jwZFTEus6JxN7WA/AJ4mzm9xXiqFb
         EwsJ8BjaHgHkGBnVHEi/n7ytjPJB7c48FKMkfj29tAplK2S8bg8lcVemYyAWuiA8tbjJ
         eLyM3G55VCFG+Ovge4yFMeIJesXJIKxEn1GgtEBU0prApfEWNs/sx/etc0xiupylidnA
         jLqk/UZchs57NmS9MuP7ZOWXlA3mn9ox3htgY5Rb5GxPTl/57wlAvPfvUA3Z7OVT5Ga5
         MZ6XZXnw9Ets6Zm+cSmcynWQAVcAxlHVu7Li5NT/oVq6yYI2nzflpnQahhc4Ukfn8wzo
         hZtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r/0MFcB+cP3kss2mgf0ZqgA93rxrEonhIbG1G+vVjoU=;
        b=g+j7kQVR/xylV/wwPAxzA8oDZmmCIiBiU/zQJUEAh9Jf4p5BNjARkQULkhGzOQ69O3
         x70Vg+PD3q0NJa0HbmGIHtAAR4eTFGuZYvRF6rMA1w3kXYaw493bvH+eAFxQhpKNhVY+
         Se9rK4DzCqNzImo+ch1GdkmN81KarMDEsdlujtqxXV4Ve02A6Sx+GHluLmTE0ZvD/cTo
         PF8ll9yPu/03pmy2NbsRsav4Ll4AuwuexFZluG2nMwyInIZF2ItZuE7L2m5thWjSy49j
         4a5L9OzUtmCr4eGEumt1midanJUhtt5fDnYfOouYcefjpKO1E5thT3WyjoeUmlxH6XVi
         wmTQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531jV9+DTsNMTmvuG1w8kmpZ3cIMlDo7TqehsZYiZQRuGPLyR7kB
	MttuGWuO7vUqhKljTMdS6mk=
X-Google-Smtp-Source: ABdhPJzgHpFHQWwEBD+7B5QToBBZbfOamFCHBTYw5he9W3MMQdCDSkfwgIgrv9ZiU1C/w2l3XpqZkA==
X-Received: by 2002:a05:6638:cdc:: with SMTP id e28mr291652jak.100.1601047079516;
        Fri, 25 Sep 2020 08:17:59 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6638:d09:: with SMTP id q9ls418177jaj.10.gmail; Fri, 25
 Sep 2020 08:17:59 -0700 (PDT)
X-Received: by 2002:a02:9086:: with SMTP id x6mr293829jaf.126.1601047079019;
        Fri, 25 Sep 2020 08:17:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601047079; cv=none;
        d=google.com; s=arc-20160816;
        b=lGolaOO6FrF9+m5yAw4bFDBTfbuRK8o+5oTw5W0RWA35BFBoAbrDKOyhR3gYmnWP5f
         xV1YOuRHtt9m6Y9HOSID4ixqrmijEy3j8T11Zt7ALe6xIr0yWYYXPz7NqUZ8wd5YotI3
         ZVu3DF4iF9h1h5fo54qgD6HarJx9yIN1COXB7Ep+0FuQKmTa9hNoOgxqxNcgTF9rKn4S
         mDE+BqEcrluhp63smWmEtxDct8p0nEqa1Xtg+qYT29TayhG/eS/Qlh3HEGslFniTwR5G
         phahYaPyLLHQPBWVFSkDpLcr8rjAyLGvJ1SeA65Kr107O5j0DsXKat5KySL0B09EJ2Ch
         aRkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=BQ6mez3nHAhL3xrfIz/0X0zLjLwRuhvv7k81BwyAgfQ=;
        b=yVZStyIuHTPDx73VVclhQAOb1EzCAde+aWUaOExE5TrSDyKhVSFHLvnlKqXdHDJCfM
         MDOw3hJu5CuyOthoE08Xa7PWREWdTUsP1odIwjlLr3wSqtmmq4OBdQlPj/bNyOROMMkt
         51u3DjjSnJtfHcXRtACb3i4KyWJwqaukePQZNTYeaE03thKK8Ek+ouDgfYDXln2frEjO
         gai+OAI9QhCtYiTrh7mArmBeIiy1HJD97yNLa1g90+W/1nAjabqtwEx0vKrauPKMBkgK
         iYjJlwN+XUvt/ziPzL9St1nmiPE8RVANesS5p1wtLh8fPDS/teGiTsmALFtIuSrQzAV2
         TUJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0I0jvTv7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z85si223166ilk.1.2020.09.25.08.17.58
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Sep 2020 08:17:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B44E920878;
	Fri, 25 Sep 2020 15:17:57 +0000 (UTC)
Date: Fri, 25 Sep 2020 17:18:12 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Coly Li <colyli@suse.de>
Cc: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
	netdev@vger.kernel.org, open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org, ceph-devel@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
	Christoph Hellwig <hch@lst.de>, Hannes Reinecke <hare@suse.de>,
	Jan Kara <jack@suse.com>, Jens Axboe <axboe@kernel.dk>,
	Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
	Philipp Reisner <philipp.reisner@linbit.com>,
	Sagi Grimberg <sagi@grimberg.me>, Vlastimil Babka <vbabka@suse.com>,
	stable@vger.kernel.org
Subject: Re: [PATCH v8 1/7] net: introduce helper sendpage_ok() in
 include/linux/net.h
Message-ID: <20200925151812.GA3182427@kroah.com>
References: <20200925150119.112016-1-colyli@suse.de>
 <20200925150119.112016-2-colyli@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200925150119.112016-2-colyli@suse.de>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=0I0jvTv7;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Fri, Sep 25, 2020 at 11:01:13PM +0800, Coly Li wrote:
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
> index d48ff1180879..05db8690f67e 100644
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
> +static inline bool sendpage_ok(struct page *page)
> +{
> +	return  !PageSlab(page) && page_count(page) >= 1;

Do you have one extra ' ' after "return" there?

And this feels like a mm thing, why put it in net.h and not mm.h?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200925151812.GA3182427%40kroah.com.
