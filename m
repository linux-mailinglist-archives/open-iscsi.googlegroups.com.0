Return-Path: <open-iscsi+bncBCUJ7YGL3QFBB3W2ZK7AMGQEDW5HWNA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD7FA5F029
	for <lists+open-iscsi@lfdr.de>; Thu, 13 Mar 2025 11:03:31 +0100 (CET)
Received: by mail-pj1-x103f.google.com with SMTP id 98e67ed59e1d1-2ff8119b436sf1549846a91.0
        for <lists+open-iscsi@lfdr.de>; Thu, 13 Mar 2025 03:03:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1741860210; cv=pass;
        d=google.com; s=arc-20240605;
        b=lvWzqu2Hzs65sXtpP+DYjCbDtjuyY8iBv0myKCvcKfjaiJnwXlqAHXhe6FbraXwPbC
         XxBcvlwjECZFD2Br+Hu4KbygO5tRUXuK9sm1FavmH8vXLZMmeOQvdphh4NDhwz4msgIm
         u36O24yYTz9OR3VeWnOtJ7vz9jT1Zdh9z3NV7JSjYv/LJ0NYbE7j1ONrQ8M8smBNMKhB
         ziId2WsuWRJ/93qe5IduMYoD2iSVsSvKctgJKy9CXqH3Io0ndkY81s2cidedKX1MfuOy
         KCo20d0dk3kytd9MHq6+6jXTyHrc+BhSuYmEla21r8t8csFV9kHGbbxg0Yi5UXpOzLcY
         uzTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=tvIc8qqs1rmtEaf1ifFZPiOUIWPL5QuqNtKF08HJb2Q=;
        fh=sf3XR4XLujz3UZk6gJHFXRQlMiaI/xwqNn7f0q+ea0Q=;
        b=LI+dVp2PYaKCC3k4WQ1oNmRXWiwz+M+KFdwPBd5NHiNPo7WqDlAXvPKvjQ/yt8eAMY
         xv8PykYuJ+1JVD68Oqfj3z/7lHQqkKB1XHATDRiJWnSOMSTNYHOlUBRxCUlQhjkevTaQ
         9Vbcxe+TPB5u9AvIUt3xe94joZknvt4Jx1KmoBr64nn+7aI5R+dTc1OTnAT3qo/eKx/z
         4jNgePU8M6vnsm1nbSzEs2nubqBqQWhu4qTeBDsASjkB6h5AOlP1dmXdVBdAEp9xPMA3
         nlF+vWDt9klcmMs741RDtXBO33YGcHNu/AxqCchRpWTJkq8ySi+Ge+2i1slubwNhEuNw
         h7dw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=qXNFyN4z;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1741860210; x=1742465010; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tvIc8qqs1rmtEaf1ifFZPiOUIWPL5QuqNtKF08HJb2Q=;
        b=KzSfCPmv9BLuSedz7XwwH36Dv8m0eWAkUWj9W7vla4OhyH4eX3vbP5Kj8PzhHpxXvK
         fttHZvBayPGvSBwWdCAI7cN4Ol7o/HkdVhUmyxCWUyxjPOz9IHgahPUA2NqOmYQP0W2V
         5Sn+hf26K5pHfKyYLHyDkKtpc6KI2U7617/qQBy+ClP+KcFz035nzyncyrUF7jOLZ2vX
         J1WqzChC1T7RMOfXQoy86RSLfZLJ/Sne4xiEkFEywLelhgJoDy9mZOxmL62zXirRFxoR
         PMymXXUx6cT6GwSZL4Aq7BfDqz6T/BIuTgVc4ixpR6XVaAxs842Kkg4mizcm8fIoVEsp
         GgOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741860210; x=1742465010;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tvIc8qqs1rmtEaf1ifFZPiOUIWPL5QuqNtKF08HJb2Q=;
        b=ByfgjMEOMgVvsEZActbfoKvXSntwDRM5AELJnna33GsCn9q/yPK9JWlKGDcJ8fjZdx
         I4WHF0sk2ugAJnI2srLYVYcl3eE95uZKjpoCo9MPYDCI66b8MZqExjcdL3hpzBOtnSp5
         lZ+8Js37PtpKPZ63gqszhc0NoFLlYVv4yCz0tY4Mhootg1g+uRN27oIoA/dSMT5Uf4Vs
         vm+qV8fuUZbg9tc83WtDyLDM3ZnChwVU1t8DYz7S4jyfSJBagDaNyWiM4VXA6h0mgezL
         +0eY6GWErr9sY7HEIW2yXWJto8uRA+09Z2zZsvsNe+kVxzOUiHg0dRatXOYFdR+kjT9Z
         CMvw==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCWjG2hGd0rFlqU60IRCVQO8MR+2/wgssRJkavL8KSLLj5zyEvqMUauVzwyiUR3EaG+kV/rq5Q==@lfdr.de
X-Gm-Message-State: AOJu0YxhV3hA/78DmJqCOZ+jFHAD3YcpTbGz63e0bqtvlc1Sr6xowbIf
	T3L06gaB55tvSW/Es+Q7rJx40c3sCo82IH4jIZFpj5yoljAINkNg
X-Google-Smtp-Source: AGHT+IED3PGyJ4AMiDNdQps5ypVuNOkb7Atds2siZemrUfJb8mkdEe6n5KVq8fqKLfBQ2UfHXFDXpg==
X-Received: by 2002:a17:90b:384a:b0:2ff:5ec1:6c6a with SMTP id 98e67ed59e1d1-2ff7cea69acmr40426927a91.18.1741860209807;
        Thu, 13 Mar 2025 03:03:29 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com; h=Adn5yVHNra46iobsZtTAH9rtL+/E9ZXtEcFSCZ4OqfZ27dyC/Q==
Received: by 2002:a17:90a:a105:b0:2f7:21c:a7d1 with SMTP id
 98e67ed59e1d1-30131bec0b2ls992697a91.0.-pod-prod-07-us; Thu, 13 Mar 2025
 03:03:25 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUsoTsf7a625OeoLjPVnmetYwEeE4IaXPIkBGA/kxjNWPZai8x6LRc5FcyizIGFo+Dv4kqiKAGu6hEX@googlegroups.com
X-Received: by 2002:a05:6a21:68f:b0:1f5:902e:1e97 with SMTP id adf61e73a8af0-1f5902e24b4mr16562176637.41.1741860205477;
        Thu, 13 Mar 2025 03:03:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1741860205; cv=none;
        d=google.com; s=arc-20240605;
        b=eJlf5Ure5s1thwKYf0D/jI7cmr16w9Tiup6H6G1UPxfVouj38/BfzyEnGGp7WcWQ7v
         XuXG3XiGicKXEemPBkE7fgVcgBfw4/EiwFy3REdMA83QTm6pVYNBEzvVF0Xj9SHD9OIA
         netM7MC8wyTeNlrK05wHSf4nanbQvdcRRHbIXLcOKwV1RZKM1HqYwvBcHeQJlpU3aEk9
         gDDaiTN4NNxQWh+bOuvM5IsKSE+TgpWwncgduuk8cLRJNpcVl7wBcFws5+px3oGslpIq
         Xal/zwMXDwE7hnQrb6DdYn0GreE9HEQ+JARSeb0xEKncu4rL5J8BbnDzdjs8Xg4UyDDD
         qCPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=myEPgBH9IA9IlF8jLe9nX7T8H747CvfXd83OmkPF2Fw=;
        fh=PwFMmTnIVI/4OQYTVfyh+op4L5vYxZvF14MWM0N2TEU=;
        b=hq+v7SqzBNClcqjOmJl/retFG5FuRGO97LD/AOzfuuoqmOUKRymHR2zIIm7bXoSfgo
         435VGt7YwpjxZV13VB6jIh5B9mnRRxBko2KS8yV2RV/Wh/9Z6x9sI0aXfT2QwVB0q8Zw
         dQwbfL8pC2Ezx1NKMiudEM7LEGtLg6ze99FCaGNLddgTxhWDZFl18ZuNNUy4RcohyFAn
         JCpqmwZETvCIE2WYR6ya8x/t3SBKPOskG9oxGinlkgeRauvBgjFoSemQytiHOlmKzDnZ
         7yShB10e2lsCflbjXjuKNgTJs6Bh1MuuJEs4XdE5Avpy//8XF6xMSZVYqyNOvQ103AuT
         9A1w==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=qXNFyN4z;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org. [147.75.193.91])
        by gmr-mx.google.com with ESMTPS id d2e1a72fcca58-737116b6d1fsi48645b3a.4.2025.03.13.03.03.25
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Mar 2025 03:03:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 147.75.193.91 as permitted sender) client-ip=147.75.193.91;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 9811AA469FA;
	Thu, 13 Mar 2025 09:57:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7D2EC4CEDD;
	Thu, 13 Mar 2025 10:03:23 +0000 (UTC)
Date: Thu, 13 Mar 2025 11:03:21 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ma Ke <make24@iscas.ac.cn>
Cc: lduncan@suse.com, cleech@redhat.com, michael.christie@oracle.com,
	James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
	James.Bottomley@steeleye.com, open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: Re: [PATCH] [SCSI] iscsi: fix error handling in iscsi_add_session()
Message-ID: <2025031316-frail-twitch-7313@gregkh>
References: <20250313081507.306792-1-make24@iscas.ac.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250313081507.306792-1-make24@iscas.ac.cn>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=qXNFyN4z;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 147.75.193.91 as
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
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On Thu, Mar 13, 2025 at 04:15:07PM +0800, Ma Ke wrote:
> Once device_add() failed, we should call put_device() to decrement
> reference count for cleanup. Or it could cause memory leak.
> 
> As comment of device_add() says, 'if device_add() succeeds, you should
> call device_del() when you want to get rid of it. If device_add() has
> not succeeded, use only put_device() to drop the reference count'.
> 
> Found by code review.
> 
> Cc: stable@vger.kernel.org
> Fixes: 8434aa8b6fe5 ("[SCSI] iscsi: break up session creation into two stages")
> Signed-off-by: Ma Ke <make24@iscas.ac.cn>
> ---
>  drivers/scsi/scsi_transport_iscsi.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index 9c347c64c315..74333e182612 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -2114,6 +2114,7 @@ int iscsi_add_session(struct iscsi_cls_session *session, unsigned int target_id)
>  release_dev:
>  	device_del(&session->dev);
>  release_ida:
> +	put_device(&session->dev);
>  	if (session->ida_used)
>  		ida_free(&iscsi_sess_ida, session->target_id);
>  destroy_wq:

How was this tested?

I do not think this change is correct at all, please prove it by showing
how it was tested.

thanks,


greg k-h

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/2025031316-frail-twitch-7313%40gregkh.
