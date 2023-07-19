Return-Path: <open-iscsi+bncBCYMVIPVXQMBBTOD4CSQMGQEXZY2O4A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B424759CBE
	for <lists+open-iscsi@lfdr.de>; Wed, 19 Jul 2023 19:48:00 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id 2adb3069b0e04-4fdb9b500efsf3551011e87.0
        for <lists+open-iscsi@lfdr.de>; Wed, 19 Jul 2023 10:48:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1689788879; cv=pass;
        d=google.com; s=arc-20160816;
        b=MD51B+uhLjHdVf9kBgAKckFO7jcOMHxOlkMsACB8jfypFAfnuDXmuvr2LAJag2xOYO
         WGBnKz52rFzQ+GcGD1P3mKUaGx7L+wHHdpYCYxnIFkbjxJmXgfLFdEQ/NKZ3J5bjJvxg
         JukvTRElhdKiMzh7A+ze52CL/jIeUAg7ejcPoUaBI5qh2aEec4C1+2hs+jkkc8rcu0n6
         D43Oy2FDtb7iQqnRFaf/pP3AYF6WsMAdk3R5xMUYMAJ5wTaPGNWr/PQ86UmQvuL/T7Da
         4TrLCwQLK7cIvXrPM/BUeI8iTXyiRrOF8TCcFjUOLanEFjzqLkSSy7HbhtdlELASfx/y
         k7pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=hDftChI7A3yM4MXwrrHOkrNXgSn2oc2LVvwuUf48HDo=;
        fh=zLJKX52TPis7a2ErFVl0vrNBKBh+wlMvI6izaUXULfI=;
        b=EvR/UTQz5m9lcpGZz2zed8Sww4FqCppt3+GQZwBOhTJ9BH4Gy5tJB4GiCCrhPyRI5o
         dgfScA37Ci7lxq5nhG2niCiqO5v8qZF3qYJoK419xJlGSkgjsfrYkoJP3zQaDBjqU/3t
         kI1DE7gM6kbZwbgroqP5thjwVfi/MMsXFGE4PX0fQx+yPfJn1xri5qA7sHWs0WdCKLLs
         QnOqIG01gwuumZN1LTsHolPyaSPJXV0cFxrqqavwjIvR4XoBe8EjlULuzLanXXpf0AEc
         vhG2EdiXgOldK6kftRjkkz/PbnlDGok/nTXm6crfz1XeCvpqHv33g+bRntcFHVN0V5A3
         ZMRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MUD0YKmL;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1689788879; x=1690393679;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hDftChI7A3yM4MXwrrHOkrNXgSn2oc2LVvwuUf48HDo=;
        b=jpUzjYQvDHVS3M+yjva78NoiCYDVJnQRvvP6QX06Ac0K2jvHJYp1duELSph9wADDTo
         iF2GRX9qXgbA+8dDzvRAaNpuIJ8TehACoUljn0h2YIDdrxstd2d67LozBzKt2bxlPFdE
         GO5pJmDk4c3LnHBcl8webLHf6tMIl2h3WSjniwYsvElgIGkvwLLkA0g0PiV1dioXXAQk
         ouvIzkQ2tSbzphv2bxZ1WkAbJFs7rRWH2rGCMADQxsvYhBTthZcxdI5fVtIWhC7Qp6n9
         QS4ghoR9GIxeODqRMHCaK29xkMt03DUeA8Q+b0o+qmSCJ+A8af12w7NTkwZSm79qbtPi
         WfeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689788879; x=1690393679;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hDftChI7A3yM4MXwrrHOkrNXgSn2oc2LVvwuUf48HDo=;
        b=JaSvrsSF/9rERoLF3Y1k1dnuSQDyA8lNIhY/hnofmXOHvNK4DU5Hk7v6NzqqfBwUiF
         Z1/ZDs5uQByOl5D60ZFfVjcS8/cGWJpcIuStjvr4j3orEBgdsEbbmMx1QKoe34ca+FoF
         /HDgDkmXMn+w3o45O+UVReWml1/hwl5D38HnvvfYM3wU7ld37bWshMBpogQcydM763+3
         57i2NP9sSYHOYxL8fAfRFIoPOi04blHBYVUVkeJ9SFkQjQHXHYTYkgH33075srvAffi5
         SWH6J6vkiOJqotUTKIM1hPolY/jGLej94eawkrkauUGkM8I2cYZZVzdoZJpQCEDDSM5S
         te9A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ABy/qLYMcu2iX2moZoK/BoVpUofgPvQfABxfYPbsT8BFDOdr8X/voxK8
	lgM1wR4ZA2Pbn9vx6k4uVoU=
X-Google-Smtp-Source: APBJJlG9R7jGOs2472J4n3He7Jt1EnnWw2EkUOuiD3zvWrQfNbb0aRJswtaAFAQl1IjzNnSVz7sp9Q==
X-Received: by 2002:a05:6512:3b23:b0:4fa:a0c3:ef9d with SMTP id f35-20020a0565123b2300b004faa0c3ef9dmr623050lfv.18.1689788879366;
        Wed, 19 Jul 2023 10:47:59 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac2:5b46:0:b0:4f8:560a:a8db with SMTP id i6-20020ac25b46000000b004f8560aa8dbls65632lfp.0.-pod-prod-04-eu;
 Wed, 19 Jul 2023 10:47:55 -0700 (PDT)
X-Received: by 2002:a05:6512:445:b0:4fd:bd8e:8fab with SMTP id y5-20020a056512044500b004fdbd8e8fabmr465845lfk.7.1689788875410;
        Wed, 19 Jul 2023 10:47:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1689788875; cv=none;
        d=google.com; s=arc-20160816;
        b=WAMOA0Pa0hYjGrVv6Abbi3jwWBtY0PsKiI5KthYM1e9rwtWpk1CwLih8AXfkYslgMR
         DUA6sPerrHkds3bkc576AU2Ana5XWnE16uTLQBY6um/DMtPqnirxo+LaRFWHotvDCtea
         vTTK4J5ecjwRzFtq53BaqqPkk53UOhCzk3/oOIzMbQ0alXU/IHdiL17PkxxJ/jkdH5WH
         uVdZ/aOYXZsCxcXADNdlRS9I67dzb7yZlu3DXkR8N4mv01jpPpzEZZI6p7bjDzVuD654
         y4WHdb9cJWmtVHx7v4ZFwD3VfKvBqsk0d7+g0Ind2QrzSXkFiCAkiRYZdRQkUGWDsdKd
         0C1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=foCsuTlaTYiUdT0EoYTewi4VWmF5exv07sKx0Z3C8eQ=;
        fh=zLJKX52TPis7a2ErFVl0vrNBKBh+wlMvI6izaUXULfI=;
        b=y/z9TmdsgXNPfJD6PRaqBJl3PtbXvKlVPm50twuGoG1LwLI5o3zSyFDBJfp5n/72Pw
         GhiWUk2z2DundFQ8vi39ZMBiMi83B9Pvg5wetL0akLoKjJknInoHJhgBJF1Y62GzG2I3
         biRtip3Awd2vtMcmQXqoVXLA7Qin2YN/yIvrox+SNwkoDSyKLRzunwkYbUHrJH7SwJdr
         AN2DPbwc/acZJjTSeQ9NqvTYL14aFnolAQ1SQTUeoxcz9bSOZZ5LuNiuUs3bz8iBrm3t
         UetBBfWnpD0Blh2R+mdSAlDrRGHIbnBXTsI4tyGn2Cq4FgGqK7rG4EK6wspb/gIFzY1Q
         5Ihw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MUD0YKmL;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id d37-20020a056402402500b0051e6316130dsi341242eda.5.2023.07.19.10.47.55
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jul 2023 10:47:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-370-xkW-L1d9OOmgSjrP5mDVdg-1; Wed, 19 Jul 2023 13:47:49 -0400
X-MC-Unique: xkW-L1d9OOmgSjrP5mDVdg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 58BDE2800174;
	Wed, 19 Jul 2023 17:47:48 +0000 (UTC)
Received: from rhel-developer-toolbox-latest (unknown [10.2.16.238])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 79E962166B25;
	Wed, 19 Jul 2023 17:47:47 +0000 (UTC)
Date: Wed, 19 Jul 2023 10:47:45 -0700
From: Chris Leech <cleech@redhat.com>
To: =?utf-8?B?5p2c5pWP5p2w?= <duminjie@vivo.com>
Cc: Lee Duncan <lduncan@suse.com>,
	Mike Christie <michael.christie@oracle.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	"open list:ISCSI" <open-iscsi@googlegroups.com>,
	"open list:ISCSI" <linux-scsi@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>,
	"opensource.kernel" <opensource.kernel@vivo.com>
Subject: Re: [PATCH v2] scsi: iscsi: kfree_sensitive() in iscsi_session_free()
Message-ID: <ZLghwZh2jVnLpzim@rhel-developer-toolbox-latest>
References: <20230719074534.5311-1-duminjie@vivo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230719074534.5311-1-duminjie@vivo.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=MUD0YKmL;
       spf=pass (google.com: domain of cleech@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Wed, Jul 19, 2023 at 07:45:48AM +0000, =E6=9D=9C=E6=95=8F=E6=9D=B0 wrote=
:
> session might contain private part of the password, so better use
> kfree_sensitive() to free it.
> In iscsi_session_free() use kfree_sensitive() to free session->password,
> session->password_in, session->username, session->username_in.
>=20
> Signed-off-by: Minjie Du <duminjie@vivo.com>

This looks good, thank you for the follow up to Mike's review.

Reviewed-by: Chris Leech <cleech@redhat.com>

> ---
>  drivers/scsi/libiscsi.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
> index 0fda8905e..a307da898 100644
> --- a/drivers/scsi/libiscsi.c
> +++ b/drivers/scsi/libiscsi.c
> @@ -3132,10 +3132,10 @@ void iscsi_session_free(struct iscsi_cls_session =
*cls_session)
>  	struct module *owner =3D cls_session->transport->owner;
> =20
>  	iscsi_pool_free(&session->cmdpool);
> -	kfree(session->password);
> -	kfree(session->password_in);
> -	kfree(session->username);
> -	kfree(session->username_in);
> +	kfree_sensitive(session->password);
> +	kfree_sensitive(session->password_in);
> +	kfree_sensitive(session->username);
> +	kfree_sensitive(session->username_in);
>  	kfree(session->targetname);
>  	kfree(session->targetalias);
>  	kfree(session->initiatorname);
> --=20
> 2.39.0
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/ZLghwZh2jVnLpzim%40rhel-developer-toolbox-latest.
