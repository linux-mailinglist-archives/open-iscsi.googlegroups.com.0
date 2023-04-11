Return-Path: <open-iscsi+bncBCHZVHVFVMARBZHY2OQQMGQE4ZLGXSA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id E50156DD2AD
	for <lists+open-iscsi@lfdr.de>; Tue, 11 Apr 2023 08:21:26 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id r11-20020a2e8e2b000000b0029ba2ce7447sf1227331ljk.4
        for <lists+open-iscsi@lfdr.de>; Mon, 10 Apr 2023 23:21:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1681194086; cv=pass;
        d=google.com; s=arc-20160816;
        b=uLFTMkJZb8dDD6fJncD71Ss17sb2OAXy/hHNGg2qRKSbdbFycMBL+KqRH0r7cCojrO
         zUGXdWRet5sZzsuyc1Ujdpmr1XKnOcbEBY4E0OU6aIsIMlY1dft5+dloQiTXkeRMcmuR
         GLTnc/QIeftoPQfHhrUS8hvE80sODDt9JXHH6BjULOiZ+N0c3tKPmyVhuyY/2i/3ebxe
         Ge86L5YBAfHvGGcD9TeR6JQWe5g16DbJRk1JQKs0pRQK+hYjTzMvDhn0Ih5386sfXWok
         1VMwc3Kwbeej9yhvVEhm6QEQMyrUArpp1phcKMpUe8k6MefpiGFdUofpKCFbm3wd1qUh
         K2Wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:sender:dkim-signature;
        bh=xlOGPBmCQ5Nw+0F5sm2dao3KXxDz6Nhc3n+bYtxmpQc=;
        b=QZO9qc+towWgMvpy3PM2NRidNtDFXvfk0Ghf0oKuikl3+y1XzrVSWG+C6gYVPOEZms
         L4JXkStMJA2st4MmbOCrZ8GCTfpt/N4C3zb9bBHoiRZV9vdqd3HhO+Vortdf4mkASCYp
         wi0Xtpm1WnchQ8tB+//uOWgNRO1Y4ULi7PXR11AuORVHTkoi2fop/3QWlPvBdS0Sh8l5
         ix/l8t9sxi3pkXom8Tq/5VATz5wtBwfw9TD6EVCmZokWilCb9DejpGgMPCtw1GAv3TGr
         Y10TSMWfsiZ/2PtRZXYfZIW9SjsteSK0uZ/cHLAGTG70Cq7JhvB0bGdIIw5QvCQUABvo
         1v4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=JR6wPiYG;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 2001:67c:2178:6::1c as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1681194086;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=xlOGPBmCQ5Nw+0F5sm2dao3KXxDz6Nhc3n+bYtxmpQc=;
        b=PfwzAX0rOl0e2HiOzKlqNd8m2sIBBzv2XkvDhQhw8IwCYxHKJT8nBiG2DXI7+7zmlU
         Q7D9XsPLwd6QFzed0Xuqn2JU+hgQgqmdas06IbYIJvlYgHzaOOCPZsK7KnI5IMR1+IVF
         zvdXdTcdZ2cWBV/pCRbLL56IgoUUPp1dgcon80+PNWA77h59t46v4XI2XhIteiTuh0nU
         MJsl+Uir+gkagyQxJfDCKOYD4X3v6rrVV1YcGNew6GYaMPwYcpZxUAghvxpmac7MY/UH
         fKXjE35UAyZ5dtspsKHgTLe5bhy1a+zovPrD1F9GCnkxs1EMQMOSVq6dAmbfuk6OamJM
         6w9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681194086;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xlOGPBmCQ5Nw+0F5sm2dao3KXxDz6Nhc3n+bYtxmpQc=;
        b=hfCtxC2Dxjb7aN02DWdtleTPqgp6xxgNwNcRT7Y6DyFhnqXgpaex6n6/WtcE+1sR9s
         /qvOFinMjySTjA880wWLWTunmlfPGrcyA9YQ01oQzZ1BFO38iJBF/qAFkMcmQg7eY5OX
         y9cvnmjZVOFYvKUMCnaeF4rF+vvfkfO3cf0Cgww0hAerIqo/bG7qX3kGngbiBN4xMr34
         c5mhDi3QXwf5RUrN5r8tLo8TCp4LBNyBl05k+q6c05Da+D/AikH2eAUgT1HgjwlnOkl1
         N+ZDSKjLclc6jD+IkK1dXaLwhnw5/UZsZiSVQwDjczGpzcs546wpyEOt1DzejO4yuHR1
         PyFQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AAQBX9c9XEkcJSBJ/nQCj2iPAWlA1h3+Tv0pmnMUpeErVONp2bVq8KzK
	ulHwSPM2AJDtduNzOxmF/wU=
X-Google-Smtp-Source: AKy350alT2FweuH0Vi0mhhcGqKWCPUjEqoRkbGt9VJXGYmszcL+0s6HEgtQi0Q8CGZwJDW+NfUg35w==
X-Received: by 2002:a2e:92c5:0:b0:2a7:6696:a89d with SMTP id k5-20020a2e92c5000000b002a76696a89dmr425227ljh.6.1681194086349;
        Mon, 10 Apr 2023 23:21:26 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6512:401a:b0:4ec:83ed:245f with SMTP id
 br26-20020a056512401a00b004ec83ed245fls743184lfb.3.-pod-prod-gmail; Mon, 10
 Apr 2023 23:21:23 -0700 (PDT)
X-Received: by 2002:ac2:51bc:0:b0:4ea:e799:59f9 with SMTP id f28-20020ac251bc000000b004eae79959f9mr475419lfk.66.1681194083755;
        Mon, 10 Apr 2023 23:21:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1681194083; cv=none;
        d=google.com; s=arc-20160816;
        b=qKHME1lQx35MRD/EHmGGXpswgdjtcT19OfTqM0JBLwRNXk868AYSSF9T9QM/8uh80B
         SlJKnSjaWvkyRnZk3k+RLB5nJjwcWQsQFxb/jgkxYfU+fYcC+4y1XSalO5GlO5TX2ZTb
         PALv5JLB6Xm30nFZ+COaXDClpKa3uFouxzfY0Z2hflCOLYOqqMjDGCXpYIY/cK1f0NDm
         9M3l3r+YDZATCon5ava8JTA4uvn35SnhCnu7zTVk0i1Ck5hkDsBfg+XMpeBKa/w4r1gP
         dY7IDUxTLduOslq6yEMViGiBTbg74Hl9o8JmE+793u6YEB0gimWxDIAsI9ZCBLoSjP9T
         JQmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=2kwn18c/T+2wAfn5ja1T55ELVX775A8gqjuoiOsgh18=;
        b=oir2EjZtpFRjyl9kvZ6lwa+UHkH2WW6XR8QvEHQ7M4Id/DjP2alDI9EIze7Q2vT99c
         i/ZHgREkbTXasVoYfOX3dEGz2quzAym055v5YBItms9riNFhZTx78c/HzDviG/qwhla6
         KYqGH1UckQaTnoqQtRCpSaVWN/HUKQr5skLzho0YUwjH4OjqAH8xpJ/TkhyGH2hpsNNK
         1l8ibeOSvaoAlrVuW+xfJdA3/hH1SYWvHparCwPEB+NIAPJfYSLUZ9C2ykfqhOmqUSez
         b9UVY0j1SzQtgaH+m9e3mjqdISHPUrHYUn+oPmaJe37y4qIqnFvcxFGTrxn3jyU06TVr
         dBPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=JR6wPiYG;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 2001:67c:2178:6::1c as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [2001:67c:2178:6::1c])
        by gmr-mx.google.com with ESMTPS id k12-20020ac24f0c000000b004dbafe55d43si682345lfr.13.2023.04.10.23.21.23
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Apr 2023 23:21:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 2001:67c:2178:6::1c as permitted sender) client-ip=2001:67c:2178:6::1c;
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 4470921A4A;
	Tue, 11 Apr 2023 06:21:23 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 2001413519;
	Tue, 11 Apr 2023 06:21:23 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id TBqlBmP8NGTMSQAAMHmgww
	(envelope-from <hare@suse.de>); Tue, 11 Apr 2023 06:21:23 +0000
Message-ID: <85458436-702f-2e38-c7cc-ff7329731eda@suse.de>
Date: Tue, 11 Apr 2023 08:21:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 11/11] iscsi: force destroy sesions when a network
 namespace exits
Content-Language: en-US
To: Chris Leech <cleech@redhat.com>, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, Lee Duncan <leeman.duncan@gmail.com>,
 netdev@vger.kernel.org
References: <83de4002-6846-2f90-7848-ef477f0b0fe5@suse.de>
 <20230410191033.1069293-3-cleech@redhat.com>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20230410191033.1069293-3-cleech@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=JR6wPiYG;       dkim=neutral
 (no key) header.i=@suse.de header.s=susede2_ed25519;       spf=pass
 (google.com: domain of hare@suse.de designates 2001:67c:2178:6::1c as
 permitted sender) smtp.mailfrom=hare@suse.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=suse.de
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

On 4/10/23 21:10, Chris Leech wrote:
> The namespace is gone, so there is no userspace to clean up.
> Force close all the sessions.
>=20
> This should be enough for software transports, there's no implementation
> of migrating physical iSCSI hosts between network namespaces currently.
>=20
Ah, you shouldn't have mentioned that.
(Not quite sure how being namespace-aware relates to migration, though.)
We should be checking/modifying the iSCSI offload drivers, too.
But maybe with a later patch.

> Signed-off-by: Chris Leech <cleech@redhat.com>
> ---
>   drivers/scsi/scsi_transport_iscsi.c | 18 ++++++++++++++++++
>   1 file changed, 18 insertions(+)
>=20
Reviewed-by: Hannes Reinecke <hare@suse.de>

Cheers,

Hannes
--=20
Dr. Hannes Reinecke                Kernel Storage Architect
hare@suse.de                              +49 911 74053 688
SUSE Software Solutions GmbH, Maxfeldstr. 5, 90409 N=C3=BCrnberg
HRB 36809 (AG N=C3=BCrnberg), Gesch=C3=A4ftsf=C3=BChrer: Ivo Totev, Andrew
Myers, Andrew McDonald, Martje Boudien Moerman

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/85458436-702f-2e38-c7cc-ff7329731eda%40suse.de.
