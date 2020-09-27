Return-Path: <open-iscsi+bncBCUJ7YGL3QFBBMUHYL5QKGQEUEZXZLY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 952C727A0D6
	for <lists+open-iscsi@lfdr.de>; Sun, 27 Sep 2020 14:21:07 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id k4sf1683118plk.4
        for <lists+open-iscsi@lfdr.de>; Sun, 27 Sep 2020 05:21:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601209266; cv=pass;
        d=google.com; s=arc-20160816;
        b=S4UEo24SBL5enOEcCjzlzaqLTSRdAC9Mewd3h8IHSbD4ZRIiP3qKBDy4Nqdxh8J7nl
         CunqWm57gd/7RkICkcZBiCTyCTSEH02fMQQKkZWRp3a1ZONSm2oiQVPcfiuwKXiIVXoJ
         jumP6Oid+S4LQ32gicatCQaKLOxfO0zNZuH51ZNX5rZeFYzssDJPsVgRzZYPNmnZ9zrS
         OKpGFf3UBkVJDXlcP3QaV/cpYYnbuKbPJJu8U7VIF1xColpyWYgNNoiv8VY36dES9R8G
         qdmmOmhnkjT3KLGYshotMHeDoc5xIKG0SUXl+PcFZA8MS5cNRXJVglH5T8YDARmmb2SK
         8OkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=y0X0UmBs/XcdijewPfTa+1oaMVKdZifNzbgGzkZ3a98=;
        b=wmsie1Jmux/Iqoop5/QgMWWkZ5fNWPkaWOWnXL7dYvNKxBjkCv4wmguImgu5Nd3o5D
         Gwvax1FXOsGfx6I2+QigoQQs2Bmp0fzTgfqibeLSiir0d9GcYUs7gT1fEn2XXRUAJ8MS
         lXdAE4fzbuF+IU0cjthhl760PUnTKWHbfMqLB2KKVT7WUykkyria6MsygE0WLSaQchfl
         cUxJp7/gfDxTIkBKIAnHXQaDyLtPcJKQZ9IMUchO3klzX6xjPhTILbzGJYQyEx6BsGl3
         zw0zWes1bqqdRQC9E0CuRigYyl1t1bK88zREeG6XlFzWMOop+C1iAkTNnXy5VwiOppa4
         DMNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FtJG2gRJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=y0X0UmBs/XcdijewPfTa+1oaMVKdZifNzbgGzkZ3a98=;
        b=nA02cTJp83tOBypAKJaP5hhh9JCdUhtY9f4bz/Y67lJ9vaydgnRqWTvYni33syo9vW
         P2epOl6FwpTaBf5nJt6BDMRJmEGNvoXiMdPZsNQkLwARYaNj4sDwS0vHbdUdR8k+bJkw
         LdOxcNHCHkb0MjbHXyDhlyCzsAv7dxHObHEtB1M24QcbtT+5fGa11NZPBc6cV9SsCEO2
         fFkhDyMmx3kz83KTNCpfsDLTyW5f2Gc9knJB/SWWv0HEzQmQEJH0G+EV2+O2cHzhC7v6
         kTLYz9PWz4XG0Cx3OhYAQ2upzzgmmMH5iLi0cSccAG5ijl+PmDEzNgsZB/O6kb7S1Uw/
         sEsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y0X0UmBs/XcdijewPfTa+1oaMVKdZifNzbgGzkZ3a98=;
        b=BsT3nPNoQP4VW9ns3wx3m2TP6LdwdAyjRATETXNIQuLcKFoVQ6J+J5NGlR4eMiXQXM
         SCMtk+d+mdu6pZr+KU8b22V2MvwAoaxFa9OQ+yvN0803Uhp4YF+fNJKo7e9GZfB5V2Gr
         pfqAfPfeLTAwbglVg/UHnaTaszjAhiAvGBXc8SZHz3SWznDEYq+DKyhVxvw0aGD7I0gB
         bYt8PPqc+QuimbpyGbmBH/BcrGFhK+xpQ8LXkEVouYCGsws4Ij1rYAOXMykcKEdGZaQO
         bRHo+7hrT44ThmbbzLOzgBDlFSWGaZo0E0MAoXTpH7IplDSXBFVnJ/E4+A3ILUdpzNtW
         GF2Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532abA4wVl2CvyxONHfkZI6xo2nOXzkMFDykKUxIxFXOGBffoZPh
	z44faENvIkV4EXymUB7D1eI=
X-Google-Smtp-Source: ABdhPJygu77msPz9MnW5Hz5LmP66/SMyT3yeFpi0oYIrYMU/WvlFLGy9HKnH/mDl75lRfkQHwXgAqg==
X-Received: by 2002:a62:6c2:0:b029:142:2501:397c with SMTP id 185-20020a6206c20000b02901422501397cmr6962350pfg.65.1601209266198;
        Sun, 27 Sep 2020 05:21:06 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:ead1:: with SMTP id p17ls1782894pld.2.gmail; Sun, 27
 Sep 2020 05:21:05 -0700 (PDT)
X-Received: by 2002:a17:902:bc8a:b029:d2:2a0b:f09e with SMTP id bb10-20020a170902bc8ab02900d22a0bf09emr7434601plb.33.1601209265613;
        Sun, 27 Sep 2020 05:21:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601209265; cv=none;
        d=google.com; s=arc-20160816;
        b=WapY5cD0wb/Pt/0sJivz2EGyNz1yMvoUyjGw8D+kSRbx49F7SfWwdXnlM07p24ZUkb
         +gFhuVXb2hy0wIlf+O3FlUbqYg9EVwcgDnLSiNS/zDyw2cQZ/vaaIR9sxH7/ITtgX1pF
         eBWvKjNlBH6Yj+U2tXmr2qtZU/YlCpiIerFzKzo5wJuOsO8wy98KEBO5MkLgCcGEGF2r
         xEJsLrBAkW1YnbI3/DlWn2q52NoF855bcAue5OplJuv8F5jVddDLZ9vf2o7MTDEu3ouk
         ZrCvDqDq564qSAwQiDBt0WFbUdSUUu8dY8VPgnCEtHXhwKMzSdd1dkoWfq2JWO+ndiY+
         7lfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/IGWFvoJlQsWT+OnjmR9853t+rQs8danDwZN4uV8YjY=;
        b=fcZtBejg0fkbnqW8ymWpyCsK1l2DSeD95I6gs/TlZ424/LxdPoREUx13D7N3i8cJOM
         GoD9Z2CVbzAGGImmtHGrUxbOCEIeaE3yn7dBzV8vxsqpp/NQBEBGbQOsSJfUQ8lRaf1r
         1NzBAv7frk5gSA47UGH+ZtnK4Go8F63o2E1OAUSCEj6rk6BsJkkzsYtQ3AklijoJywW6
         8LVs8nZzM7DbgWtarVgF4uG27s29bBtgh0oUrrH5CnSErU/hdMQkzZp3eZQQSGnE60mY
         025mpcDr6GJjVoy8RI3fR6HNqJZRxr6NU/AeYdjsQtcNGerR3ZQyoy2P9pkOcfjrtuRQ
         3YKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FtJG2gRJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y1si204130pjv.0.2020.09.27.05.21.05
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Sep 2020 05:21:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 74316208FE;
	Sun, 27 Sep 2020 12:21:04 +0000 (UTC)
Date: Sun, 27 Sep 2020 14:21:15 +0200
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
Message-ID: <20200927122115.GA178781@kroah.com>
References: <20200925150119.112016-1-colyli@suse.de>
 <20200925150119.112016-2-colyli@suse.de>
 <20200925151812.GA3182427@kroah.com>
 <7b0d4f63-2fe5-9032-3b88-97619d8c5081@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <7b0d4f63-2fe5-9032-3b88-97619d8c5081@suse.de>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=FtJG2gRJ;       spf=pass
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

On Sat, Sep 26, 2020 at 09:28:03PM +0800, Coly Li wrote:
> On 2020/9/25 23:18, Greg KH wrote:
> > On Fri, Sep 25, 2020 at 11:01:13PM +0800, Coly Li wrote:
> >> The original problem was from nvme-over-tcp code, who mistakenly uses
> >> kernel_sendpage() to send pages allocated by __get_free_pages() without
> >> __GFP_COMP flag. Such pages don't have refcount (page_count is 0) on
> >> tail pages, sending them by kernel_sendpage() may trigger a kernel panic
> >> from a corrupted kernel heap, because these pages are incorrectly freed
> >> in network stack as page_count 0 pages.
> >>
> >> This patch introduces a helper sendpage_ok(), it returns true if the
> >> checking page,
> >> - is not slab page: PageSlab(page) is false.
> >> - has page refcount: page_count(page) is not zero
> >>
> >> All drivers who want to send page to remote end by kernel_sendpage()
> >> may use this helper to check whether the page is OK. If the helper does
> >> not return true, the driver should try other non sendpage method (e.g.
> >> sock_no_sendpage()) to handle the page.
> >>
> >> Signed-off-by: Coly Li <colyli@suse.de>
> >> Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
> >> Cc: Christoph Hellwig <hch@lst.de>
> >> Cc: Hannes Reinecke <hare@suse.de>
> >> Cc: Jan Kara <jack@suse.com>
> >> Cc: Jens Axboe <axboe@kernel.dk>
> >> Cc: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
> >> Cc: Philipp Reisner <philipp.reisner@linbit.com>
> >> Cc: Sagi Grimberg <sagi@grimberg.me>
> >> Cc: Vlastimil Babka <vbabka@suse.com>
> >> Cc: stable@vger.kernel.org
> >> ---
> >>  include/linux/net.h | 16 ++++++++++++++++
> >>  1 file changed, 16 insertions(+)
> >>
> >> diff --git a/include/linux/net.h b/include/linux/net.h
> >> index d48ff1180879..05db8690f67e 100644
> >> --- a/include/linux/net.h
> >> +++ b/include/linux/net.h
> >> @@ -21,6 +21,7 @@
> >>  #include <linux/rcupdate.h>
> >>  #include <linux/once.h>
> >>  #include <linux/fs.h>
> >> +#include <linux/mm.h>
> >>  #include <linux/sockptr.h>
> >>  
> >>  #include <uapi/linux/net.h>
> >> @@ -286,6 +287,21 @@ do {									\
> >>  #define net_get_random_once_wait(buf, nbytes)			\
> >>  	get_random_once_wait((buf), (nbytes))
> >>  
> >> +/*
> >> + * E.g. XFS meta- & log-data is in slab pages, or bcache meta
> >> + * data pages, or other high order pages allocated by
> >> + * __get_free_pages() without __GFP_COMP, which have a page_count
> >> + * of 0 and/or have PageSlab() set. We cannot use send_page for
> >> + * those, as that does get_page(); put_page(); and would cause
> >> + * either a VM_BUG directly, or __page_cache_release a page that
> >> + * would actually still be referenced by someone, leading to some
> >> + * obscure delayed Oops somewhere else.
> >> + */
> >> +static inline bool sendpage_ok(struct page *page)
> >> +{
> >> +	return  !PageSlab(page) && page_count(page) >= 1;
> > 
> > Do you have one extra ' ' after "return" there?
> 
> It should be fixed in next version.
> 
> > 
> > And this feels like a mm thing, why put it in net.h and not mm.h?
> 
> This check is specific for kernel_sendpage(), so I want to place it
> closer to where kernel_sendpage() is declared.
> 
> And indeed there was similar discussion about why this helper is not in
> mm code in v5 series. Christoph supported to place sendpage_ok() in
> net.h, an uncompleted piece of his opinion was "It is not a mm bug, it
> is a networking quirk."

Ah, nevermind then, sorry for the noise :)

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200927122115.GA178781%40kroah.com.
