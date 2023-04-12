Return-Path: <open-iscsi+bncBCHZVHVFVMARBCUT3GQQMGQED3IJS2Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA886DEB7C
	for <lists+open-iscsi@lfdr.de>; Wed, 12 Apr 2023 08:02:52 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id t27-20020a50ab5b000000b0050047ecf4bfsf5899914edc.19
        for <lists+open-iscsi@lfdr.de>; Tue, 11 Apr 2023 23:02:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1681279372; cv=pass;
        d=google.com; s=arc-20160816;
        b=zefvy02A8h7ITcVn1x/OBTjrNd0XVA6EmR/yyKE5y8xxzxWFtsBIthDujuCN4a6fe+
         YmXLi8UCN25z0UW4b/wV/9BsWeO8DnSnWHfF1rF3D16VW+b49g26N0mkgL8VheqhsvC0
         Ff2H0+6NDWNyK84Fl0JzRbLVuyy4stTEZ8uIlkoAYp0Dw+McZWe8fRvYnyFG7vExNOOl
         LHVUJJNuy9AeKBhj/SBRTOeb5a6fQXTYgVslHFYEvyFaCDhH6MIa8ltZM8TT9mE4bRfw
         TTUGiSArdD60l3z7Db4GN43nf0V2OZyNeVnz38g3le283qmMUG6GENXtTxCCo5PYNdeS
         j+/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:sender:dkim-signature;
        bh=oxsGsDxQJbF0OgN3sNwMYJdlgMctaDrfiaLGo6xYnGs=;
        b=RMZ5w9veogqpkeBUxO0U3gtN563YS86hHTjeuQWmpKxGu2M4D2kSa9yj8rM5pLcphl
         +/KnfLf5+TNvtUK/x98OLYYCeUKwtRoaakeF54LituapgedAQcSbhQK+DeHVyev9tnrd
         8jJ/LgVnROjYhCoEv+48HSek+dbvN+kRgV0zirF0lliwEmW/jWYqMNKfHdK+uj/oAIQ1
         nCjne6ksqXAQZTPRhjkFF6AtCaAc/UQBUSQ8wct7/71EERMA6Z0wOQ1NU/4n/HAz219+
         qW7Svj4m98AeohzNRY4ihU3GB0inhx1iLakpEu+UIMA9n2OAuXY6Oy5FXR4pbvsp5IIW
         t0Ig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=GUG5Y9ey;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 2001:67c:2178:6::1c as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1681279372;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=oxsGsDxQJbF0OgN3sNwMYJdlgMctaDrfiaLGo6xYnGs=;
        b=CnEM0cC/Vmq6ov3//K53llDtWsjKAClotE9/RpQDPo4/uCcxnQm2i77uDHM6E+PWmh
         lckfUd5OLrbK5hmfQd+3iPCGQ1hutxIbVJXdns9Fl8x+rBYkBM79bRRZAfmmxXF8Jz1I
         cGP8WZJM0llu+oj1nqpxkm0b1ftvo/lQLXNnbMAHdtMUqLREyS/umrN8qoGNS+SF3U4g
         +M6hjfnC3NcZb60cdROYyJ30lJNbh067fCetzE8qWt5e6h9w2Ip4T10ZQtK/5ENSdSQ3
         XhHjSOpU06g9+k/KTTr7RrYSYNQah1WmIL/hyEUBI11tJeIGdo/T7VZ0Xt3QWzU74N6p
         bzxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681279372;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oxsGsDxQJbF0OgN3sNwMYJdlgMctaDrfiaLGo6xYnGs=;
        b=sVwWYkqSzXpF49HaH2ZUMtPPYnMUjEVoWXy0D6wwzHVH0FMZk4M2mH80Ol0lRWahjt
         Ri56d3pYG85I9gh/HwtZ96cNjrQApmCTbC05mkO0kq9ZYaZ/mi51Duy5lYQgw36vqUyI
         ZrO9/CawjOzWkscnOcs7qZ+RCFEQu/9KRjpq1z9+hb6mVhgZzd4C4YuqIuyUFPxtzx2g
         R7nqov8DLIzKVgPEip0nB6/fZWhVgDp+T6hhlZkw6O+OEyY4l/A7S9YYfMEI6I+46cgz
         evVbXaRK30e5irBHZQxME9kO0OWfb9iRWC6IihcUt1GLLqTkqApgCWDTgQOGfbncbUT7
         copQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AAQBX9csfDJAjq2+GJ4AYB8Ykvz7dFY2/jUx3c7efZ+9qWTMCuxpYRVi
	/aahxkzLxL2j/z0gpAXRf8c=
X-Google-Smtp-Source: AKy350YBNvFL+1kzhvEwQSK2K1JdkXQi2F+JBhoRtT+j0Bcdj1a7BglvDNRIThjBGBWIz5GSYRC4lw==
X-Received: by 2002:a17:906:2f8f:b0:939:a51a:dc30 with SMTP id w15-20020a1709062f8f00b00939a51adc30mr884579eji.2.1681279371953;
        Tue, 11 Apr 2023 23:02:51 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6402:51d4:b0:504:9a87:717e with SMTP id
 r20-20020a05640251d400b005049a87717els6513447edd.0.-pod-prod-gmail; Tue, 11
 Apr 2023 23:02:47 -0700 (PDT)
X-Received: by 2002:aa7:d3c9:0:b0:500:47ed:9784 with SMTP id o9-20020aa7d3c9000000b0050047ed9784mr1537827edr.14.1681279367445;
        Tue, 11 Apr 2023 23:02:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1681279367; cv=none;
        d=google.com; s=arc-20160816;
        b=dHkJqGEqIKJ8beESIzmf+T3F/YnYqofM+LCJHigoYrxrR+qPq/qKsmtOZ1bKguxU09
         ef1gcK04CsT0yVvkcoCoiRuZ9n25miyqqviQgrQ6OTgXcHTCSjZIu63nTBt71dcbWXp1
         dwmS1R6Oj6QnOqLAYizhkoXYUDVIROj12jdzNLzvVtk5ApWMfj60L59EMk9tQgF6Sr+Y
         qJUL7teWyxTsrakDr6LO4cjrItA/juTYvuberFSr10QbdlcdrKO1TMpo6tE15Ywt76sK
         snPpzZUru0+GmOM0OvrrGjAmeeu8AChJ9tjV20XjfA0J2NHn9NfLrkvA9vFBagVOPmBh
         MdKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=2jv6U/y14eRDx1QvxhnepcCCOP5Pg57H1mqamrdIt/s=;
        b=sui1UkFfUMaruUDqvB4FnhxbMyudvWX9fYJhmThl6zeOW+e/5edv6RaLzk3h7RPdVz
         6ifmeYyBb2fRaODORWM6fZ0wutGtSY46txcqNB3AYcvqDrbbIE2aDOlPFODs3W7PLlu4
         q1lnY6sAoqFdy9knPOEJJDBZvi4eiUAwhwH3MnZQ3eoGaN1CN2HZsnqFI14glnWf1jJE
         cidLtxGH7ZvIe4kzyYkpOirKO9MvhAUA0lqOFMDpVAtGAJvEOWjXv5llPYztt09Tdlzc
         +Mi1AaydHM0BSBYdb0+f4H578ERLJbCiqFShlqGxwOGozSVPJ+snW/BDfUoeAW7RPSUL
         Gj7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=GUG5Y9ey;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 2001:67c:2178:6::1c as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [2001:67c:2178:6::1c])
        by gmr-mx.google.com with ESMTPS id fg12-20020a056402548c00b005046fdc43a9si675693edb.2.2023.04.11.23.02.47
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Apr 2023 23:02:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 2001:67c:2178:6::1c as permitted sender) client-ip=2001:67c:2178:6::1c;
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 0B88121940;
	Wed, 12 Apr 2023 06:02:47 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id B0B96132C7;
	Wed, 12 Apr 2023 06:02:46 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id RqxpIoZJNmT5DgAAMHmgww
	(envelope-from <hare@suse.de>); Wed, 12 Apr 2023 06:02:46 +0000
Message-ID: <e7b55e2d-4bd1-eabe-43b6-ef00da69935a@suse.de>
Date: Wed, 12 Apr 2023 08:02:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 11/11] iscsi: force destroy sesions when a network
 namespace exits
Content-Language: en-US
To: linux-scsi@vger.kernel.org, open-iscsi@googlegroups.com,
 Lee Duncan <leeman.duncan@gmail.com>, netdev@vger.kernel.org
References: <83de4002-6846-2f90-7848-ef477f0b0fe5@suse.de>
 <20230410191033.1069293-3-cleech@redhat.com>
 <85458436-702f-2e38-c7cc-ff7329731eda@suse.de>
 <20230411181945.GB1234639@localhost>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20230411181945.GB1234639@localhost>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=GUG5Y9ey;       dkim=neutral
 (no key) header.i=@suse.de;       spf=pass (google.com: domain of
 hare@suse.de designates 2001:67c:2178:6::1c as permitted sender)
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

On 4/11/23 20:19, Chris Leech wrote:
> On Tue, Apr 11, 2023 at 08:21:22AM +0200, Hannes Reinecke wrote:
>> On 4/10/23 21:10, Chris Leech wrote:
>>> The namespace is gone, so there is no userspace to clean up.
>>> Force close all the sessions.
>>>
>>> This should be enough for software transports, there's no implementatio=
n
>>> of migrating physical iSCSI hosts between network namespaces currently.
>>>
>> Ah, you shouldn't have mentioned that.
>> (Not quite sure how being namespace-aware relates to migration, though.)
>> We should be checking/modifying the iSCSI offload drivers, too.
>> But maybe with a later patch.
>=20
> I shouldn't have left that opening ;-)
>=20
> The idea with this design is to keep everything rooted on the
> iscsi_host, and for physical HBAs those stay assigned to init_net.
> With this patch set, offload drivers remain unusable in a net namespace
> other than init_net. They simply are not visible.
>=20
> By migration, I was implying the possibilty of assigment of an HBA
> iscsi_host into a namespace like you can do with a network interface.
> Such an iscsi_host would then need to be migrated back to init_net on
> namespace exit.
>=20
> I don't think it works to try and share an iscsi_host across namespaces,
> and manage different sessions. The iSCSI HBAs have a limited number of
> network configurations, exposed as iscsi_iface objects, and I don't want
> to go down the road of figuring out how to share those.
>=20
Ah, yes, indeed.

Quite some iSCSI offloads create the network session internally (or=20
don't even have one), so making them namespace aware will be tricky.

But then I guess we should avoid creating offload sessions from other=20
namespaces; preferably by a patch for the kernel such that userspace can=20
run unmodified.

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
open-iscsi/e7b55e2d-4bd1-eabe-43b6-ef00da69935a%40suse.de.
