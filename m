Return-Path: <open-iscsi+bncBDK73744WQBRBB7KWKBQMGQEW4ZYIRQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id C066D355C24
	for <lists+open-iscsi@lfdr.de>; Tue,  6 Apr 2021 21:22:47 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id o11sf10466741wrc.4
        for <lists+open-iscsi@lfdr.de>; Tue, 06 Apr 2021 12:22:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617736967; cv=pass;
        d=google.com; s=arc-20160816;
        b=hJHWjsBvKZ3GEZ2o5uwi/IMuwioIIlEDS491siYoPHkJpn8gMTwfMPsX4NcOjq9UMf
         NWf/vK+f/KKnWbjTZQ0tCmXAKsVrOGgHre5C9PTH4PmxQZftn+Y+MFnBZx1iRmYC/LQB
         UbMi9C5Vf5giGGopElta50k87mzuLQdvukstKnvvxzROIwAYgUFdC82Nb3LSCumGbX7x
         6F59o5FvPaiM7r90eev6jWGtMR68jAqdpSzRFwyXTxjuflBRhi3B0u/8AjlxL39dIiwr
         KHtjfPTmPKQa4wNyeAoFub+UfvIaLywWbcnNM+69mU3jCwoVlCWpee0AXXuqcFtPb4G0
         J/6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=aBGZq3nu/xILn5C55YbJ41o++ck0Lw75TzpM1QDp+m0=;
        b=tVOKBT1yJIoxM88SQB4USifW1ZHn5AuDjbHzsey+15NgVmAxGdhv/KEvZlpQUnGmsF
         o5CpldGgWlj2S01CaisGDzD66WwB9nMalArssNmzGMKPnzmQls/juNrab6aa9OH5dHev
         C29nUoVkeuEAjgy3WFlXLDrReKtUActxubpdAprA/kixy+jJVGQXevBseSFpaDu/sOHy
         rf/WV1u7ZSH2dYeEUUcYIoxl9MKIonODj89pCkEqcXMlZfXmaMsT/bD08M79XkDyEOh0
         3i8JmEnR/eWqMpYryiuCBz5zzjWbdQZvCHKf/j/jf7G6ziTBjkOB5E0qhRo3LnIX+iVS
         c9HA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=tgX7twj1;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=ujBs3Otf;
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.21 as permitted sender) smtp.mailfrom=greg@kroah.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=aBGZq3nu/xILn5C55YbJ41o++ck0Lw75TzpM1QDp+m0=;
        b=Ks8bP1ixCnhMg2TOhQ3wTNndaMwdAdV2nWQDZxL4JVkPPwwcfrUd54gyFpZcn4Xaq9
         jSlcWyyreqlmFm/quVQvNVuXNaAUMf+Ffclr9ici3u1rbCYkIxZHe1bItWp+Tu0BDJHc
         kc3O/YRhbmprodAZD65znZksBuv2752a1jBmc3k3rRQbT3vCRx/ljqHK+KGYQH+ZhpBt
         aSGXO06S/uXcvxcR7ULRSL4lDdN9G23mpKGmYGXsaeew2evrqIjdXbH5h2xTAyAERHzD
         Xe8FJwNaQKWIZwnFiIrCjiA9nfqOgnVtTK0pv3PCz72Ap8QD/yXz6GeDYhBnH+NlqclV
         vr+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aBGZq3nu/xILn5C55YbJ41o++ck0Lw75TzpM1QDp+m0=;
        b=d03tzPbp19sxbJjC264BQk88orvYZCpT0CiYl5NRDuR1ipByymG7Aj73l0jzNu51ur
         NQypn/Sdi8mg45UJMQRsjfWxDi2+BPEoR5UWaD6t9B5Xx2MUJRYWkg4hZkH/8/4reI/N
         OdINuAwCGl+ULOGQtbhUXxrnrNxhfi8S3ji6o4tjVsSsIM23PeeQ+2OR/mW0jra1+64S
         +kcFCSeUILctM0s4WaYFp9iQFrAiSwvJPoJzrALdKL0PTp2fDhnbffbDEPNrgTiqXCqJ
         3Yayr2PZnbmBXSpcsDtucJkMN/u0dtlyhGvtk/Dd9TCpFqL0heT/W5k/wgik+0hb6A2v
         EYcg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532sjHPOlD3D52XqcKl2FCLebywvLP5CkAamtKjhxIaWp2WgHFRF
	9iIlCeoa0DX9qhOf3KqxSrc=
X-Google-Smtp-Source: ABdhPJxNBLs0Fr9ffGfBclkbGFBwBgzJb0iDJyn7wxOccRvjr3rumMuy5FXAbEnC0iBhPAgHKsm5Fg==
X-Received: by 2002:a7b:cb04:: with SMTP id u4mr5498400wmj.122.1617736967462;
        Tue, 06 Apr 2021 12:22:47 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1c:24d4:: with SMTP id k203ls1803914wmk.0.canary-gmail;
 Tue, 06 Apr 2021 12:22:46 -0700 (PDT)
X-Received: by 2002:a1c:c357:: with SMTP id t84mr5527811wmf.149.1617736966556;
        Tue, 06 Apr 2021 12:22:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617736966; cv=none;
        d=google.com; s=arc-20160816;
        b=uGsgYSZw6txSGKu83H2G+osiipqF8M98oEIK6c7fy7sMLdTgP8/+sxNHsFGdekj9Tk
         nqDn6wzvN70Xy+KumCmzGu+7AlitIPPX5y3j49leH0CCAvWpVvQVIzJ0ZDhIMJNmnRxS
         xJIvOkoqyP9bjyYOJuZPIJ8V7D0MqSl9Wt6jGMtRbQN3e77EhNTlHD/fK3NGLzI1OKu8
         XeNuiEK9Mrvz5+nGa/s7DlPuqCcT8adrAf7ohOctOV5suQsLCzt42cPD6cCVx2eJ9tLZ
         ijlgstWedhU8tMR8TdDXqCbxx3KZ337txUG9RdRpZQdUKg+PlweZXP6PIf+z2PikoNuz
         bWNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=C59toQeGzXwFwjO16nyv9LOjwCUSLowD6NlzSgCuGYM=;
        b=ua4Cu/JnRwm7cPdSPrJIo8U/TfK9jRX4F053WPwU6yPojmjF4ubfb/ZeFDKmKZ/Ysi
         FhIu9b6OIodtjG1IDqcuN8SvgmYEbIfuOBwzkSx7MAxgHwoICpioV16/raljfzVXxeUP
         WY/QvCH5YV7cngemCn/JL0XqzdvjNpLv92d7FrYJi9BjeCKUwta7ybmcqqR1g4OB4QJX
         FUDyQ6UvELsMCuA65UVpxJJ0J0zqrWIwZ25qJ1ZcupunZPh9i8qqUjRUCulYBsaycnOk
         W0cHgpf5u77b33u1pFm16ldNn/ESdYqi1toeaNbvpdh3h8C6GY8ZxO/6idInZJ7wXaOb
         pIVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=tgX7twj1;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=ujBs3Otf;
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.21 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com. [64.147.123.21])
        by gmr-mx.google.com with ESMTPS id k187si281042wme.2.2021.04.06.12.22.45
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 12:22:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 64.147.123.21 as permitted sender) client-ip=64.147.123.21;
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 0D4E31567;
	Tue,  6 Apr 2021 15:22:43 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Tue, 06 Apr 2021 15:22:44 -0400
X-ME-Sender: <xms:A7VsYKUjZXWX46AM_a-6KRWcnDVtyZpFWgOKyO0oLft1fo4q_b5xbQ>
    <xme:A7VsYNh_0nLt2cuWibfNEGU2oD7E3XXNey69nrahFi8NRGXw0DGLltQwerHg7bDoE
    uzgnJ8jCRItXw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudejhedgkeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpeeiieevhf
    ehtddvudefjeehffegtdfghfdvvdektdehueduleeiteffkefffedtheenucffohhmrghi
    nhepuhhrlhguvghfvghnshgvrdgtohhmpdhkvghrnhgvlhdrohhrghenucfkphepkeefrd
    ekiedrjeegrdeigeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
    fhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:A7VsYEDqvqlMCv4-0Z9M3nNT18p-qlsUbvs7lBSDtBuZlNojHuAB3w>
    <xmx:A7VsYGe-NKhwxlDDn4m5V2Wy7u2_85277xkaazm8J4WtKVm2klrzZQ>
    <xmx:A7VsYEeRnnsf9XNTuNBiWYOuTvmtVsf_s-tQuAGPY-CQSxtDQzxfSA>
    <xmx:A7VsYOvVZMZDUkl7CYqqGwkrO4pN1Y0QCyEQi8_tA6UOTtSAvEfGIQ>
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	by mail.messagingengine.com (Postfix) with ESMTPA id 1AD7824005E;
	Tue,  6 Apr 2021 15:22:43 -0400 (EDT)
Date: Tue, 6 Apr 2021 21:22:40 +0200
From: Greg KH <greg@kroah.com>
To: Mike Christie <michael.christie@oracle.com>
Cc: Sasha Levin <sashal@kernel.org>, linux-kernel@vger.kernel.org,
	stable@vger.kernel.org, Gulam Mohamed <gulam.mohamed@oracle.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org
Subject: Re: [PATCH AUTOSEL 5.10 07/22] scsi: iscsi: Fix race condition
 between login and sync thread
Message-ID: <YGy1AJl1KnymOjHE@kroah.com>
References: <20210405160432.268374-1-sashal@kernel.org>
 <20210405160432.268374-7-sashal@kernel.org>
 <be0783c0-4ca8-d7fd-ce97-c24c2f1d8e84@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <be0783c0-4ca8-d7fd-ce97-c24c2f1d8e84@oracle.com>
X-Original-Sender: greg@kroah.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kroah.com header.s=fm3 header.b=tgX7twj1;       dkim=pass
 header.i=@messagingengine.com header.s=fm2 header.b=ujBs3Otf;       spf=pass
 (google.com: domain of greg@kroah.com designates 64.147.123.21 as permitted
 sender) smtp.mailfrom=greg@kroah.com
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

On Tue, Apr 06, 2021 at 12:24:32PM -0500, Mike Christie wrote:
> On 4/5/21 11:04 AM, Sasha Levin wrote:
> > From: Gulam Mohamed <gulam.mohamed@oracle.com>
> > 
> > [ Upstream commit 9e67600ed6b8565da4b85698ec659b5879a6c1c6 ]
> > 
> > A kernel panic was observed due to a timing issue between the sync thread
> > and the initiator processing a login response from the target. The session
> > reopen can be invoked both from the session sync thread when iscsid
> > restarts and from iscsid through the error handler. Before the initiator
> > receives the response to a login, another reopen request can be sent from
> > the error handler/sync session. When the initial login response is
> > subsequently processed, the connection has been closed and the socket has
> > been released.
> > 
> > To fix this a new connection state, ISCSI_CONN_BOUND, is added:
> > 
> >  - Set the connection state value to ISCSI_CONN_DOWN upon
> >    iscsi_if_ep_disconnect() and iscsi_if_stop_conn()
> > 
> >  - Set the connection state to the newly created value ISCSI_CONN_BOUND
> >    after bind connection (transport->bind_conn())
> > 
> >  - In iscsi_set_param(), return -ENOTCONN if the connection state is not
> >    either ISCSI_CONN_BOUND or ISCSI_CONN_UP
> > 
> > Link: https://urldefense.com/v3/__https://lore.kernel.org/r/20210325093248.284678-1-gulam.mohamed@oracle.com__;!!GqivPVa7Brio!Jiqrc6pu3EgrquzpG-KpNQkNebwKUgctkE0MN1MloQ2y5Y4OVOkKN0yCr2_W_CX2oRet$ 
> > Reviewed-by: Mike Christie <michael.christie@oracle.com>
> 
> 
> There was a mistake in my review of this patch. It will also require
> this "[PATCH 1/1] scsi: iscsi: fix iscsi cls conn state":
> 
> https://lore.kernel.org/linux-scsi/20210406171746.5016-1-michael.christie@oracle.com/T/#u
> 
> 

I don't see this in Linus's tree yet, so we can't take it until then :(

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/YGy1AJl1KnymOjHE%40kroah.com.
