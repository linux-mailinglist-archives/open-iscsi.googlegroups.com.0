Return-Path: <open-iscsi+bncBDO7B5X3UIBBBW45ZPZQKGQENZTIE4I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id E68E018AA6F
	for <lists+open-iscsi@lfdr.de>; Thu, 19 Mar 2020 02:46:04 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id 64sf363446plf.19
        for <lists+open-iscsi@lfdr.de>; Wed, 18 Mar 2020 18:46:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584582363; cv=pass;
        d=google.com; s=arc-20160816;
        b=qxejZv/sidvOXLhqD5pGka3uYcllJ+UXfhQxZ+EFnZJjtC33JkG5xliBfOqK4JuEOB
         84b1SMSNcfxdaml6OUlSxoijxRzLcLULT/4ZYOcQPOkAfOUQ2yKaDh7rCPfinJ+/6he1
         pMNS2KMMx7L4a4LcnecdJjDgH9ledXoCz6/oDzgkn288+LG74X+vO3XzxzD8DdnMkszt
         NEovZhOsORrSeMBmUbTbp2PXBbVO1I4iI1Ddu8quVibwP91rpgcpjft1u06aleB2NTKS
         7gE+bd+FUqYaynOcEuFNzNmB8WiExZ3lB1S8EocaaV0+dmw9IdFdhwWj4eMf9BhQeeLc
         FT8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :content-transfer-encoding:mime-version:user-agent:date:message-id
         :to:subject:from:sender:dkim-signature;
        bh=K/rvW4tfrBsMsFHXJBQZ4Bxcnw9453xoM/20YErswg4=;
        b=KGX0nh1BZ3u7wNOVyb8XT6Bvt3TuknheXjVUZ7OOhstXP5kIIrXTsF75Xefz4oRFbP
         WH8b3b09Vek1QeigDRUogd72usLbQYq0nkroDwzL6XZlICphEeBmrPuWfijf9Brq0fgC
         1DxHxkiPbzbRXTPB9ase5uX0mFMOZa25miu9Hfu/wFkuQ/kGdmyi1udcgjIA9XI0mmk4
         43eGrCDupFucfjXsDjwY8LrRLRMy+DkyasIR0j9+OSFnLZVxQz8W9wbyXw7ydPPi/MaU
         mic2CFmQ7KUjlZICj7zDB3CRZLG1D3byhNubZM3h2kOuU8Ie6cRWR4c3/b61M8JwMzO1
         FpBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=wubo40@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:subject:to:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=K/rvW4tfrBsMsFHXJBQZ4Bxcnw9453xoM/20YErswg4=;
        b=Ww0x8/1pV4pNxZojPAckItH2KfxDVecFnM8kBS9fNIP9wuoDy5K5WRtMG1qfq2RTIl
         ejsN+gCT7s57ipnGXQeaJHp2OKviY2wSK6q9JWcfhAiPNE3EW43Xfv6/uDJ0a8pA8iGS
         B712tgr7a2hHzrIgEIJellRdEBkPsEVrBKLzgKKQfmpybWsvrNBuFR+uv2X4KhSpv8su
         f6RIix/fp2I6cvZHE9PvfbSb+baCTuSgw0Z6NMnfvfps6sZPobduy3MUjAgqXvG5ZhT7
         NSGeVf6zj2ajjmuQcM0KVLXFhD7X3aVFpFvUgTFnmP3E8TeipIpuZ5+6NghViZbFQt62
         oYxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:subject:to:message-id:date
         :user-agent:mime-version:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K/rvW4tfrBsMsFHXJBQZ4Bxcnw9453xoM/20YErswg4=;
        b=HsT17euRVN3sCfsC7AAlKknbWqDKSkKBE9CDTfkcSr8Gj+lGXiQsZtLUu0QAwHN8XR
         ynm1Vo7TY5XMsR+RAIdvS5EucAN8vvETjxzQdN1QvzciT4MTDEZnuSANi3PrrYZIhLV3
         VC1/RDAED9n+mKkfWYncS0TGqVpsqj+ReYo1zYYVYWKB/iGHTCXGxWPhEzMJ+HM2h2L3
         vOsLTJFc9+fWhiit6pnzXgwLtSnCL0NVRyWvos88LE9UT29LO3OMKpWQuNYSAC7Q9Y/I
         eJdQU3MeObNzOVIj3qx1dYi2gQoEYJeYqLSYTshqFx7sATr40rsyBFtlDQMF4LEsBNAe
         iHRA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANhLgQ0lCZgEUff67C4v3Nri9SXKkuwBgByLm7TEwXWmrB9ikbTTVB4u
	uR2kYmFp8gCru+C4/7az+Uc=
X-Google-Smtp-Source: ADFU+vsbt3grrgudH3Ax0JdB3Ns/iowK4QmUiqHHG1kQZ/op5Ue8jvDfCyR2JyHx2Ozt6nd0wiEHBw==
X-Received: by 2002:a63:9043:: with SMTP id a64mr731730pge.308.1584582363135;
        Wed, 18 Mar 2020 18:46:03 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:b018:: with SMTP id x24ls495722pjq.3.gmail; Wed, 18
 Mar 2020 18:46:02 -0700 (PDT)
X-Received: by 2002:a17:902:d30a:: with SMTP id b10mr1008316plc.25.1584582362658;
        Wed, 18 Mar 2020 18:46:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584582362; cv=none;
        d=google.com; s=arc-20160816;
        b=nmtJK6H5mD7xL03hvCKThw/FmFfeR4GQIOcyQVkg/y1O02amKLrLLxoA+yAKsV4PMr
         KjsuJAd4ilR2bv6uFYWkKcuFG+McbCEj4wCRbuYbavKoxezLN0Qs6V78Wlzrs0n6Z5Pi
         w8cb18914Gh7/gu9uA6GbExFivtIoLnW+BwLEyGR26548yL3ohE5fBOrm3kf/KsKJvCm
         EB3M5nBhEQYcuTpYwpqoUpnQgZcv8tbsm3D6APIbuhAz1loTNt55bs/fqOOwwVU4xxZo
         PScW+IfZQ/hdZQTOzwf+XY/yjGUaejhtTETaz5lzmE7l8ZMNBo1xuJmkqrU6V8T7RIze
         BnMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:mime-version:user-agent
         :date:message-id:to:subject:from;
        bh=e2aRqNjveC4Hoe9eydq96NbDft7kBPDq6RbRQbjN1qk=;
        b=LR8eY3oqVM8Hu2hH5njSaWoT8EsFiIFRAJxJwligovaQXylWBEBqTHGmC0J8OnvTw4
         I+c7ZtIBTcP2bsIphA9yyND5YQv0uxumcWZnZI4U4sqTdaoWru7/MtH7z/5dbi/RWqC7
         jFu55KMrSyGj5biZK33OLo0WIOVc2GoJ39Vd4clA3N+SYg7OO8u03ECtQVKxHZ/NoUCl
         5EDnHWbYb0zJ2454bdJ9p4m3HIImQtypdK1IdaWO+wUcEXxGIhgRkM7eDbBTT0qb/0NK
         oMce1d3oyN2TuS9I0E09U7ZN5Fc2/l6JzsfhUmhp9J7cPmgYpxoEL98kjKJGCvE7wHBn
         UL3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=wubo40@huawei.com
Received: from huawei.com (szxga07-in.huawei.com. [45.249.212.35])
        by gmr-mx.google.com with ESMTPS id j44si178801pje.0.2020.03.18.18.46.02
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2020 18:46:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of wubo40@huawei.com designates 45.249.212.35 as permitted sender) client-ip=45.249.212.35;
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
	by Forcepoint Email with ESMTP id E9534AEA82055DBC3E6B;
	Thu, 19 Mar 2020 09:45:59 +0800 (CST)
Received: from [10.173.221.252] (10.173.221.252) by smtp.huawei.com
 (10.3.19.201) with Microsoft SMTP Server (TLS) id 14.3.487.0; Thu, 19 Mar
 2020 09:45:51 +0800
From: Wu Bo <wubo40@huawei.com>
Subject: [PATCH] iscsi-iname: fix iscsi-iname -p access NULL pointer without
 given IQN prefix
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
	<open-iscsi@googlegroups.com>, Mike Christie <michaelc@cs.wisc.edu>,
	mingfangsen <mingfangsen@huawei.com>
Message-ID: <6ba31be9-caa5-2d7f-53f1-180986658ec1@huawei.com>
Date: Thu, 19 Mar 2020 09:45:41 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Originating-IP: [10.173.221.252]
X-CFilter-Loop: Reflected
X-Original-Sender: wubo40@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wubo40@huawei.com designates 45.249.212.35 as
 permitted sender) smtp.mailfrom=wubo40@huawei.com
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

From: Wu Bo <wubo40@huawei.com>

iscsi-iname -p access NULL pointer without give IQN prefix.

# iscsi-iname -p
Segmentation fault

Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 =C2=A0utils/iscsi-iname.c | 2 +-
 =C2=A01 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/utils/iscsi-iname.c b/utils/iscsi-iname.c
index da850dc..7df7bb0 100644
--- a/utils/iscsi-iname.c
+++ b/utils/iscsi-iname.c
@@ -69,7 +69,7 @@ main(int argc, char *argv[])
 =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 exit(0);
 =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 } else if ( strcmp(prefix, "-p=
") =3D=3D 0 ) {
 =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 prefix =3D =
argv[2];
-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if (strnlen(prefi=
x, PREFIX_MAX_LEN + 1) > PREFIX_MAX_LEN) {
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if (prefix && (st=
rnlen(prefix, PREFIX_MAX_LEN + 1) >=20
PREFIX_MAX_LEN)) {
 =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=
=A0=C2=A0 printf("Error: Prefix cannot exceed %d "
 =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "characters.\n", PREFIX_MAX_=
LEN);
 =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=
=A0=C2=A0 exit(1);
--=20
2.21.0



--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/6ba31be9-caa5-2d7f-53f1-180986658ec1%40huawei.com.
