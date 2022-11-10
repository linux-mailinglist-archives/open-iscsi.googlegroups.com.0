Return-Path: <open-iscsi+bncBCUJ7YGL3QFBB64DWONQMGQEHDSHH6Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A16623E6F
	for <lists+open-iscsi@lfdr.de>; Thu, 10 Nov 2022 10:18:53 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id bi42-20020a05620a31aa00b006faaa1664b9sf1372276qkb.8
        for <lists+open-iscsi@lfdr.de>; Thu, 10 Nov 2022 01:18:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1668071932; cv=pass;
        d=google.com; s=arc-20160816;
        b=uzgYbiRxNfJqzkjwslOnQ0yU3dkQ72tzO1oRQcLMPtx2szaF4ODtsmPN8WGvPySmUd
         hMKD++hFVccMrBZFqlmnKOtNQL+blgoeHtA3d7fuNNOH1BwignJA+gR/9Bw86PzHIJY8
         3rmsrAXJDX2B57hZxHl5Qq0t+aCxJ1DycyBsmv4nZITddnG4bBUPWKmAlWXhz7T8+tGP
         XfTHuTp7DobQC3TFRDT916i1lXYHe/B9jqSEWK4ybMvG5nJT3ZKOgWfT0jT/Ims8AqYV
         MjFs/2slvxk/DIOuRo7BjvEZajUkoVU23RKnTteIcN7Gf2ZFVljegt4ShFgUCRU/y0Qm
         XiAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=30PlMtLPhSvC24ji9mucQNRoyaPGQRPegfSIBf1BwTk=;
        b=XKeNZ5LoG2/xc8YGJqKB/1AzYB8OGB0LRImIuwEQEL/PSgi56i1x9Jm9k3BJ3sje8f
         SWfmBmWDg9c6OiJxhla+VeNKuKa7Xah0r9X7RgRFh6F15AJcKnM0IQsFDlrKHm7QHMf/
         1hU2C9Xa4fsYJOxy39G5hNYif4LqsJuitrViPRe3VNqYUoTWiST1eYjjt2NfZqRzWr2Z
         gjwUJIi0ubGOz+iGvPbW8oFdCTDO5EHbv6jTwJ5WBVnQLfUKrKuHdDBEDbiUPP+PcEJr
         cfy7Dgpo9WlvaKkHYKtoBemrT3rUOmEbepStA7zCmuDdHPArlLWwrC222VpqDkvVI4Xk
         C0Uw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=ZsuUDlkJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=30PlMtLPhSvC24ji9mucQNRoyaPGQRPegfSIBf1BwTk=;
        b=KsQfvexDRh2k6XiySp56TVxGAHAsqgbWpMXZo9DYUMT86QWqzHB07Nk4Y/fqY7p/Qm
         7PRxg1JxYhRefmStYARrbqeEOrTlPG8qpl4yTDovLN+kTUQMUmXBUyf9Z6qMLFPHQFBR
         s474+7KFnO3ZhuQoEtm/4zS5mnOEitB5nZShdxkrECx8Vo1/Dfb7Koy0bRsCYpGDgly9
         p50l6PIXpuLpWlaVgHuNrfhnSJN2qna1ML++3BjAW/f7GPrlxZ+eEi1UQu2ld6bolihc
         3lZEWsVuHpCzC/dXl1nXqfc4W+4F/FJhNgblpRDZSmeBQtUIUiE7kEc0T0CABm0m6zPb
         hj2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=30PlMtLPhSvC24ji9mucQNRoyaPGQRPegfSIBf1BwTk=;
        b=6XXPEeWdy7Fx3FZE2zVd5y7JOOeeKOU8dgjqnJeQAns9LJ6/gEugppJY9zVVkHBeuD
         yuPTLRFiiVsSB+Pn4nQogwpz/GnIdQEE3m87pul6Sc1A+hPEcPBwpuAwzOmIdiUf05zR
         Yh1Gn+hbOFN0NA3hcgLCYLgSaOmQx2D/UxSdmUJC89eEUrzCJlb+ks4/tnsUTuskNTNC
         8CvPUjZ/CrZrHgJ/tieF0AM2ZxUOOXexo9eZmCiDN59S5X2qknCtnua/fz7VHRqQucAD
         uun943sWvOCmUsKZJQDh8GYBQw6cB1gpk2sysLCvVQo0rukyNRMvGZ9qhykFUW94ToxQ
         bofw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ACrzQf1B9Y1AlIM9zfOEFneHWWJiOrmLBSDFn6ZGWG2Z/j3YX/qkV9p8
	Q02dH4WcSj0lDTycfb55mqA=
X-Google-Smtp-Source: AMsMyM4MgqLCbwA5sqI2qyrro9DfBpQmowNqq/Ue2hACJkeabnsw1b35ZgNmHQF5IxabmO5rlN8XMA==
X-Received: by 2002:a05:620a:cc2:b0:6fa:2175:5fa7 with SMTP id b2-20020a05620a0cc200b006fa21755fa7mr43216011qkj.0.1668071932268;
        Thu, 10 Nov 2022 01:18:52 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:b45d:0:b0:4b1:b8f0:d1a8 with SMTP id e29-20020a0cb45d000000b004b1b8f0d1a8ls761782qvf.10.-pod-prod-gmail;
 Thu, 10 Nov 2022 01:18:50 -0800 (PST)
X-Received: by 2002:a05:6214:258c:b0:4c2:f34f:a5f7 with SMTP id fq12-20020a056214258c00b004c2f34fa5f7mr27600167qvb.62.1668071930760;
        Thu, 10 Nov 2022 01:18:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1668071930; cv=none;
        d=google.com; s=arc-20160816;
        b=IClzSXaCicz9HMA9NO0esEI+ZkK6sk+qZGVTV+jDe3Zw/qFqvrXn3lRYU0EVy1C/JD
         i/Sd+bIJwhbBdKVRp5QH34g26hL4qPDybOWxe2fs2QxZ7Zbh6xrgD55oUGQxqUsOGAbW
         gqC4wiFToddRXZRQxL7CyXJF8DopoOzrUSUlKsEY41xoobYNESHX/vObeKf46WW4b5x7
         155itZ8mQDG7bmz8ADGQSo5LT7I3tJpXKtY9TQE03C4CntW7Wz3p/nYZewkh/ek1HUVU
         AJ3ETJVxVDBoP+RO8kTSwVqJnjSjjvufI2LPcWoDB2U7Xvvg9K1hvN6+bzPPHBD/oZK+
         UjBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=FDVy1KFe2LohQOl5PAOTqY9Mzb6AHW9bz2tzrFY/P/8=;
        b=upw6Hz98UhOR/Qi/rYDzqMEc2f1NDNGYga+QsFkUDBU0sTAdFPO4gawy07Y29nmE4R
         SEuEYb7WSF8wcpOKylt+4vZ0VQ7swHYc2JWO+y+SU1MR+DxugkFSrtYD3LB4BJ9lLbUh
         QsEWIV6TA+zyMBS1Z3XnwHjo3RaiFv8eOwJN2PI9J+50LVjSpgT3LXWOX+hHS8IgNJI0
         pS5vLnzOf0lpiAFPdU03DDU+OZXDmc13vU0SqXTUOBM3+iGfrlUblOR36iF/ntrL8v9M
         hWx6Ni2BKkZMwDFaVukFMdKHhQApyf1JIjICgxQe5Qo+nX0L+P5qowmrBjolnGvB5nZu
         EHPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=ZsuUDlkJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id g28-20020ac8775c000000b003a576c4e4aesi658004qtu.1.2022.11.10.01.18.50
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Nov 2022 01:18:50 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 45D6160ADE;
	Thu, 10 Nov 2022 09:18:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 343FEC433D6;
	Thu, 10 Nov 2022 09:18:49 +0000 (UTC)
Date: Thu, 10 Nov 2022 10:18:46 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Yang Yingliang <yangyingliang@huawei.com>
Cc: open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org, lduncan@suse.com, cleech@redhat.com,
	michael.christie@oracle.com, jejb@linux.ibm.com,
	martin.petersen@oracle.com, rafael@kernel.org
Subject: Re: [PATCH] drivers: base: transport_class: fix possible memory leak
Message-ID: <Y2zB9ndClm2EfReK@kroah.com>
References: <20221110034809.17258-1-yangyingliang@huawei.com>
 <Y2yzwB0IuaVS3AVq@kroah.com>
 <d509e930-779b-866e-9b1f-d58db6abfc43@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <d509e930-779b-866e-9b1f-d58db6abfc43@huawei.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=ZsuUDlkJ;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Thu, Nov 10, 2022 at 04:44:16PM +0800, Yang Yingliang wrote:
> Hi Greg,
> 
> On 2022/11/10 16:18, Greg KH wrote:
> > On Thu, Nov 10, 2022 at 11:48:09AM +0800, Yang Yingliang wrote:
> > > Current some drivers(like iscsi) call transport_register_device()
> > > failed, they don't call transport_destroy_device() to release the
> > > memory allocated in transport_setup_device(), because they don't
> > > know what was done, it should be internal thing to release the
> > > resource in register function. So fix this leak by calling destroy
> > > function inside register function.
> > > 
> > > Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> > > Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
> > > ---
> > >   include/linux/transport_class.h | 9 ++++++++-
> > >   1 file changed, 8 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/include/linux/transport_class.h b/include/linux/transport_class.h
> > > index 63076fb835e3..f4835250bbfc 100644
> > > --- a/include/linux/transport_class.h
> > > +++ b/include/linux/transport_class.h
> > > @@ -70,8 +70,15 @@ void transport_destroy_device(struct device *);
> > >   static inline int
> > >   transport_register_device(struct device *dev)
> > >   {
> > > +	int ret;
> > > +
> > >   	transport_setup_device(dev);
> > > -	return transport_add_device(dev);
> > > +	ret = transport_add_device(dev);
> > > +	if (ret) {
> > > +		transport_destroy_device(dev);
> > > +	}
> > Please use scripts/checkpatch.pl on your patches before sending them out
> Sure, of course. :)
> > so you don't get grumpy maintainers asking you to use
> > scripts/checkpatch.pl on your patches :)
> I sent a fix patch to iscsi system earlier:
> https://patchwork.kernel.org/project/linux-scsi/patch/20221109092421.3111613-1-yangyingliang@huawei.com/
> 
> Mike give his point in the mail, so I send a new patch keep iscsi
> maintainers Cced.

That's fine, but the code you wrote here should look different as it
does not follow our coding style rules.  That is the point I was trying
to make.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/Y2zB9ndClm2EfReK%40kroah.com.
