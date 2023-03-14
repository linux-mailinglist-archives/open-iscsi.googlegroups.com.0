Return-Path: <open-iscsi+bncBCHZVHVFVMARBFF6YKQAMGQEEMQKYTY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2A36B9B36
	for <lists+open-iscsi@lfdr.de>; Tue, 14 Mar 2023 17:21:42 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id m31-20020a05600c3b1f00b003e9de8c95easf5703337wms.2
        for <lists+open-iscsi@lfdr.de>; Tue, 14 Mar 2023 09:21:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1678810901; cv=pass;
        d=google.com; s=arc-20160816;
        b=PsZu/lXXKsf3QKnVE68hQAvU9YsmeBeFU9vb9a1Ikv3IEuIWVaF54p7GnWTINTanCr
         PP3lYnafpCKlNWxxhg2QPnHHx7EYHfqrBVKyfMwhDTcp3CYGkxMdYZ0UpLy4IA/xBC2Z
         mT8xXomyqTicGaDwMVNTpzxttqSeN3uzNrsZB4LbH8ehLmBi1Ejj0nAZIudz9xwLTQB2
         2IcoZKS2hJqD23YaS6i7b89id0sR5dudcr1VDQp+7kLLjv/CT+VR2Th3nVk8MlJ049G/
         EYyNTEd+yXMsxzBdHH9AXJeuzoCQhsrZcNy9GWjXM3y6RIQcK7GQ+GP419+KW3D3P3pk
         Ep7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=BKhX2R9zU+mPwIWSTF+86BEZvtZxJCej7X700IhJbPg=;
        b=VOUK9mjN7b9JifrC3QJWo1rjCSUOIgXwgjXXUSdvBNbxaQ7cWkc+C6Xcuc0QWSc9Ov
         4BbYlLu/8zl1/ZIw/fOmQF+aNiOa/gMLZviAhGHqEC3iG/FMuOzuL5cdxZAuypzlCxGs
         0TpUG6ZRWtRbKPTYuvKpPLMe6yX1j6craGiBCoC1n7tDsUMpGVY7GTztB1C7dy68vrmL
         ljpY+YrVQBfPgtHiHqEJUgLemFnrleu+28xBuZweGgZRlMXuHNxRuvgwf03zVUQYmZBA
         SCtGoPWQOY14nb4WiR39vD4IuUvMegxISthquhekt0Z/QrovcY7VvSk3dwnRrVElcYg4
         GhUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=tKMRiJj6;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.28 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1678810901;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BKhX2R9zU+mPwIWSTF+86BEZvtZxJCej7X700IhJbPg=;
        b=U7rzSA8kqR2VeZ74xzEqjEmmntxiDQqFiZb/jb0zbAnTq9PxSFsWajrHYIRF9s3ULu
         gxDcJaOgfaTLFwH46O1EyM29Usg4nNVfs2IJ8TK7d8X3Tl59CcT/EGqoJgxc1MGlOS6J
         VIWT4P2jSIppYYv7A+8fp6/poJBXONC+hiPPzk9ZfOLNF1HAxiylf9HDYb8rN3Ze/0qG
         Vk4Ljg3RGi0FxeFvly8NNqK3hoQXJmgGAOLhNH1i9MAlptvLi6FjVS8r9M2xmmAzpjiC
         v1GtrX+1lgBf1lghkI06+tcEFBFM3d06VjjG7iQNVEghMooSKDOvhsCXeRjmNF2oqBbv
         J3+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678810901;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BKhX2R9zU+mPwIWSTF+86BEZvtZxJCej7X700IhJbPg=;
        b=mH3HT1a92tyLf49bcW1ip0SeCI5OIztXFJJdWOl+bLNd2DBxnWSDuQqFDwZgv6iqWq
         3JvOiZ9Nk4ylOkPdb41JRSeAc9V0OUSJz57TnRXX8byAURqoB7xBQtQZoOZCX6xKP367
         tigvtWZOnjlZ3lp7zLH8HlwKZDyPbbIzZhXKv+QvOcRbnp7M2dn0xBE9Y3unJi4g6y6a
         Tqbn4lIffDII4z/TXN66P3WAoRP6vi1ZVcwt39vyrLcZpC+b9C44qWPhCsL9iBag7TNi
         GBhQQLzr133uVjEOM60FJdD4Zvl7L2Utx37TmHQCrqMIx3zxgPPnxbs1YSbOKlEtgZF2
         9KNQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKUbiwlzbaYWzN7ZlGtaZceBTcSqIMMHUBzePeOHY+JlzNeDi08D
	bJCssTZqcoCyTezKJgAxA2Y=
X-Google-Smtp-Source: AK7set9o1Yz/KietLCAxTBW+Mj9BfkPYaAOil3GudGS4Y1jup7WWxLy8iqITYpMPt79NsuLs33/OzQ==
X-Received: by 2002:adf:e541:0:b0:2ce:a3a7:5d3f with SMTP id z1-20020adfe541000000b002cea3a75d3fmr2272590wrm.3.1678810901472;
        Tue, 14 Mar 2023 09:21:41 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:600c:3ba5:b0:3ed:2bd5:bf1a with SMTP id
 n37-20020a05600c3ba500b003ed2bd5bf1als479885wms.0.-pod-preprod-gmail; Tue, 14
 Mar 2023 09:21:39 -0700 (PDT)
X-Received: by 2002:a05:600c:3541:b0:3eb:5739:7591 with SMTP id i1-20020a05600c354100b003eb57397591mr16313627wmq.23.1678810899043;
        Tue, 14 Mar 2023 09:21:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1678810899; cv=none;
        d=google.com; s=arc-20160816;
        b=T4xHWagtBamD2doyDrxyHZyZc7DRM7/RrqGO7phv1RS2/SM8fqKlcZqX0Dd5pkSvD0
         tvnYJkGgOHBqkfrVeVo4bhvRCuGR/QEBJhMqlpHcttmP1LuekfRIB2YEDzFCvC0LW1zu
         YmFYfOc9dOJKXSyu5dHRwck7zhxY4tl9OMTQPI929Cu3ArsmwmXHGGPSgbPZtgkVobxc
         UGhC8Pv1mZBGvuylupC8SC7YNhum8zr+K7XH8mOrRYduyKre0t039krmWu+iPm2E9Yol
         p6Ltzu4G29kZ88M14ItsM0K6hDcuS4vHQMtdQMKaBNUJ5PUR7s+9Ikv41OZCM9Ho+ChS
         sOQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=vhRbYtHZMpwO8/vJpp6XFG49+84U78NFWeqB+NtGZ8c=;
        b=wwqJpUgB4C1lix2HWnUkAQ+AXYf7+SPcpQfY+7Zwdqr+BpKfGmh9ZTY7qMkE7VJrqX
         LZyDe8TWE3LOPm5jhLPRp1nWkyHSOPrB/6d4gQNM33UMPsp+7tsQqmQCVIi8r8So21D4
         KqlUuJlCPBIatR/ZuwfVkFFnVc0FbOs9TyT1R0XaNsIL4KANtV6BxawfUTzqX8lDSJBC
         5T5ChLqK+QDPTwdEH7edT5VoSSeSiXCODvajsThFblHBUNQUMIsDCENZ6judoK1MCpei
         wrXLcY7gwGXfWrqAyvOmkPvzQgpyWxFsVLyQsRQEipELznCZJAU2BaMb7fTeRQEnuFkT
         uFXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=tKMRiJj6;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.28 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.220.28])
        by gmr-mx.google.com with ESMTPS id bh23-20020a05600c3d1700b003ed26bd5589si158746wmb.0.2023.03.14.09.21.39
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 09:21:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.28 as permitted sender) client-ip=195.135.220.28;
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id D0AE921DDD;
	Tue, 14 Mar 2023 16:21:38 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id AEC1113A26;
	Tue, 14 Mar 2023 16:21:38 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id aMwDKhKfEGR+YQAAMHmgww
	(envelope-from <hare@suse.de>); Tue, 14 Mar 2023 16:21:38 +0000
Message-ID: <b867f388-df15-df08-349e-4c80aabec5a7@suse.de>
Date: Tue, 14 Mar 2023 17:21:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [RFC PATCH 1/9] iscsi: create per-net iscsi netlink kernel
 sockets
Content-Language: en-US
To: Lee Duncan <leeman.duncan@gmail.com>, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, netdev@vger.kernel.org
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>
References: <cover.1675876731.git.lduncan@suse.com>
 <95df16a252bc2c9f0e7fba667d2f542814c9b91b.1675876733.git.lduncan@suse.com>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <95df16a252bc2c9f0e7fba667d2f542814c9b91b.1675876733.git.lduncan@suse.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=tKMRiJj6;       dkim=neutral
 (no key) header.i=@suse.de;       spf=pass (google.com: domain of
 hare@suse.de designates 195.135.220.28 as permitted sender)
 smtp.mailfrom=hare@suse.de;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
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

On 2/8/23 18:40, Lee Duncan wrote:
> From: Lee Duncan <lduncan@suse.com>
> 
> Prepare iSCSI netlink to operate in multiple namespaces.
> 
> Signed-off-by: Chris Leech <cleech@redhat.com>
> Signed-off-by: Lee Duncan <lduncan@suse.com
> ---
>   drivers/scsi/scsi_transport_iscsi.c | 73 +++++++++++++++++++++++++----
>   1 file changed, 63 insertions(+), 10 deletions(-)
> 
Reviewed-by: Hannes Reinecke <hare@suse.de>

Cheers,

Hannes

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/b867f388-df15-df08-349e-4c80aabec5a7%40suse.de.
