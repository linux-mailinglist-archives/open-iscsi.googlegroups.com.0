Return-Path: <open-iscsi+bncBAABBRUZX35QKGQEL6FVSOI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id D7128279BEF
	for <lists+open-iscsi@lfdr.de>; Sat, 26 Sep 2020 20:47:35 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id i1sf3053832ood.9
        for <lists+open-iscsi@lfdr.de>; Sat, 26 Sep 2020 11:47:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601146054; cv=pass;
        d=google.com; s=arc-20160816;
        b=tI87g2YOV6HXv+1J0DiuZVqxwv4MmxYb/djxg8+a5EldwhflddFNSmGPFdZe0dRHf7
         NebyYX3wFVOs29zOHOw/6RWA+Qt1f8DTgn3aK/dRxKZi7cjCDe6offmsyakJhAZP9Uqr
         XrK/TaD8vKmoh8+q8VFLisxjU2FDmNvS9o6ABGxLyrtthtxlGh8UCmr4wMjAPezC2PW4
         5+rmUfQV7oRx0JAlAnt61s8slB0guvvnhlfIU/N5cAVe65+/RVuyGrEESXQUFhQJalKW
         45b1m8EZ+KUyp4FQvz2XCWc+mCvwhXR/GRwfRSDImCfkn4P5lLnLM/Q5pn/98QE3wU5Y
         VPmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :references:in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=rNdBzjobm/1SMW3XDnWxlNPu2BrMamIkRiU+h/AAtWM=;
        b=W4GEepovgWx9AB0wdp7ohf1d6G4qXVzAlE7GIem0JY2NpbxLpyn9XW0SM+qD+QbLZF
         wF140XBKGu9qZiZ/Is1zaK352/fG3WGrHI8Z5YBXZ4Y7vPKMIj2BzvD64dW4Ob6dHe6x
         kXqkqfAcLTtCFVQswhl9YbIPI6Nls19/vdPkW59/+q+vO8rZQOJjC+OLMXctmo9+u1pr
         tyMOmSdmQgULBdT4X61cMiT/Ei6lz1XAvZqUOzXi6ggrAygc6Yie1G15ixQnazi8nch0
         8wJQTqgvOyksYgpo12uoy3wh4VV2fsAv3mjeHUDY8REW72y21D6OQN+wsmeAyVjMI1To
         /Yrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PYP9Lvc+;
       spf=pass (google.com: domain of jlayton@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jlayton@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=rNdBzjobm/1SMW3XDnWxlNPu2BrMamIkRiU+h/AAtWM=;
        b=UzV9RLiUb6R/bt0xTvHGWkSvHHm/iuV6xv6CFCr6PvJorfPivxZJWXisiX7otZ3iiT
         Cfq7PPUISHxc2xKFP8knklDaCYh/+maWEgZyOj8EeUjKTmjXiWTBFdS+SP55gWi7yplX
         H3S0nOitfBC8zEcmSyBwGAHo6twE8BRKJip3ZKGxXI2peaTh91nN2ivn0ETjomqdatf/
         o5f55B/0YbrM7kYuij9ZTCTllQ0k8ma/awEYogw2ou0Vut88hJH32eWZovJWCFLGeOl3
         cLwKVpGNHiZPb+J5itAZYrCBkJWTgtlPA1Y8xNpYnaqG4aC6+T1uWtEkBMZFIegwtzrr
         nGHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=rNdBzjobm/1SMW3XDnWxlNPu2BrMamIkRiU+h/AAtWM=;
        b=GYf+glBi0dkx6OZ27pGGojP3mU7NMim1T6Ae3alXKYgKYGHD59DJPeUBVEuIJH8kzO
         fmt4uC+PgdPkUECQhcUVQR+cxTgejnxPlguKN6j8PiV4Jdra+nN3XdYqJwPE3FSiM6nK
         67Jp/ZIpSW01rmalUVZOGLK1f9SfmjxJ/HP3nvE4sOyerPDuUr0QARf8SSjd1oZk61Op
         7BoKvMirj5YMBx2a3Dn/sqfI0RadSq+UiKqBPRXWp6r+c9y/eCVznT1vHCgk24wHSc1g
         VG+QmWiFGDmMA4KK4RjMfZzz7QOX1DLhOaZgRN66W27ufX2VYWNcLWQMlz5h/6wJ2eIO
         UdXw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531wOvZMuPOJaYNs0O73D8rq2XzPh7gORyGp6bL1PuS7VcjBvCgI
	ThKC8lA/mdth/SN+7F4g1fM=
X-Google-Smtp-Source: ABdhPJyv6tCJmsUx0s/s99DmrEUsN7MrCTK5GeM1HoU/lYDMasciBWr0JK4yGC6P4eJMqLqA9zfiJQ==
X-Received: by 2002:a05:6830:4f:: with SMTP id d15mr4300732otp.7.1601146054416;
        Sat, 26 Sep 2020 11:47:34 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6830:4d2:: with SMTP id s18ls1552818otd.0.gmail; Sat, 26
 Sep 2020 11:47:34 -0700 (PDT)
X-Received: by 2002:a05:6830:1f2b:: with SMTP id e11mr4265544oth.296.1601146054222;
        Sat, 26 Sep 2020 11:47:34 -0700 (PDT)
Received: by 2002:aca:ab91:0:b029:d5:77d6:7138 with SMTP id u139-20020acaab910000b02900d577d67138msoie;
        Fri, 25 Sep 2020 08:13:56 -0700 (PDT)
X-Received: by 2002:a05:6830:188:: with SMTP id q8mr666857ota.278.1601046836386;
        Fri, 25 Sep 2020 08:13:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601046836; cv=none;
        d=google.com; s=arc-20160816;
        b=Y92D/NkbNnR866bpJVdoQgpK5qrz1RFpu3JbE7Hn+zG8+ryZMrnw7UKtSrjB3M9ols
         ft9YeckrwEKFLc1i/AGwT47Bn670TYCXR3xgUqCcIWniKypUbIE/avELuJAC+k5pndbY
         VXZj5eHWzIy8pIvmOeojmbA/5DG9u/y5DilCCNOp68vHOjwjBseYLQi5KvjyeuYbJNoY
         JVoX89jI2AQZsFf4vKbsynHpCgwrtadAG6dpYS8tx1UwhgEBueM21cgpr0AxydNDvEhT
         /sevUMVysYKuagekN/NhUrQZu86jbWzNzPdz5PtEXxe+M90DDWKuSl30kkBhZClchIY+
         HW7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=1hOE/j9JSKbI1ii+yT3FvARyv+QjtoSiFukbSIvfD/Y=;
        b=sAdKEg+HMeKYk+rRd3UgSOx5kg68/421dm+BOlm8dvCfXs4+HrWoYzKgM5LeT5/yVk
         xLZgUQX8MDIbR1qQA6ns1eoIQdxaiL6i7D4v2Spyc2MlMK78ooyK7D/yrL4KLuuXh3r0
         b7FB3+oa0a92RykkXXNaFXcNzQxHzS3Hkbnb7RnmiQKoKov0mxeR9fB2YAjJeFcQo0my
         VIwKahYOb0V2dLvsDpfGMOIvjw2qHatJKd8Q6zciS6e2e6SAEIy81ByTG0VFnF8niISw
         kZXjjBcD3uM06C7B4h2i24LkIm5L63D8konzpT+PAS6fRuA7CjOAsQIhFmoKeKtAwlnN
         jFfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PYP9Lvc+;
       spf=pass (google.com: domain of jlayton@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jlayton@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o22si326027otk.2.2020.09.25.08.13.56
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Sep 2020 08:13:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of jlayton@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from tleilax.poochiereds.net (68-20-15-154.lightspeed.rlghnc.sbcglobal.net [68.20.15.154])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AACF0208B6;
	Fri, 25 Sep 2020 15:13:54 +0000 (UTC)
Message-ID: <955efe40d1df7ba78cd0e0f27ba13ae7650ea927.camel@kernel.org>
Subject: Re: [PATCH v8 7/7] libceph: use sendpage_ok() in ceph_tcp_sendpage()
From: Jeff Layton <jlayton@kernel.org>
To: Coly Li <colyli@suse.de>, linux-block@vger.kernel.org, 
	linux-nvme@lists.infradead.org, netdev@vger.kernel.org, 
	open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org, 
	ceph-devel@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Ilya Dryomov <idryomov@gmail.com>
Date: Fri, 25 Sep 2020 11:13:53 -0400
In-Reply-To: <20200925150119.112016-8-colyli@suse.de>
References: <20200925150119.112016-1-colyli@suse.de>
	 <20200925150119.112016-8-colyli@suse.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32)
MIME-Version: 1.0
X-Original-Sender: jlayton@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=PYP9Lvc+;       spf=pass
 (google.com: domain of jlayton@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=jlayton@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On Fri, 2020-09-25 at 23:01 +0800, Coly Li wrote:
> In libceph, ceph_tcp_sendpage() does the following checks before handle
> the page by network layer's zero copy sendpage method,
> 	if (page_count(page) >= 1 && !PageSlab(page))
> 
> This check is exactly what sendpage_ok() does. This patch replace the
> open coded checks by sendpage_ok() as a code cleanup.
> 
> Signed-off-by: Coly Li <colyli@suse.de>
> Cc: Ilya Dryomov <idryomov@gmail.com>
> Cc: Jeff Layton <jlayton@kernel.org>
> ---
>  net/ceph/messenger.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/ceph/messenger.c b/net/ceph/messenger.c
> index bdfd66ba3843..d4d7a0e52491 100644
> --- a/net/ceph/messenger.c
> +++ b/net/ceph/messenger.c
> @@ -575,7 +575,7 @@ static int ceph_tcp_sendpage(struct socket *sock, struct page *page,
>  	 * coalescing neighboring slab objects into a single frag which
>  	 * triggers one of hardened usercopy checks.
>  	 */
> -	if (page_count(page) >= 1 && !PageSlab(page))
> +	if (sendpage_ok(page))
>  		sendpage = sock->ops->sendpage;
>  	else
>  		sendpage = sock_no_sendpage;

Looks like a reasonable change to make. Assuming that there is no
objection to the new helper:

Acked-by: Jeff Layton <jlayton@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/955efe40d1df7ba78cd0e0f27ba13ae7650ea927.camel%40kernel.org.
