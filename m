Return-Path: <open-iscsi+bncBD54HHNYIIINXEGCXIDBUBCNO6SQS@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id E27819E4012
	for <lists+open-iscsi@lfdr.de>; Wed,  4 Dec 2024 17:50:40 +0100 (CET)
Received: by mail-wm1-x339.google.com with SMTP id 5b1f17b1804b1-43499388faasf50061705e9.3
        for <lists+open-iscsi@lfdr.de>; Wed, 04 Dec 2024 08:50:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733331040; cv=pass;
        d=google.com; s=arc-20240605;
        b=QKeSJ5LxtGV1qnbRQjQk0Ksf9y7WetNvKzB57hAugfMOrn/Kr4xWICEDNN3hyjftYZ
         jwqGmn6htpxfQ/gtdQYbRznzuL5Xg/pWwSQuIDW2saj4+DVCz0oDDyavjG/57oXx3Hgv
         LRbyydElbyzy/DGo+VYsp0rPKOmcMhuK/pW8voFn2iOB3Cz5NGMW+tMFkHEQh8/0wYaz
         zBda0JeQXC6ncIYMsxyqHnj6vE0xxplU4evD1yHQEXDfbi46L32GmClAzqHBq/8ndcaX
         6SAmhaLZQSdEQFHHjbHFpxPhSJ+/PjVKXdvAmUjHgqERE4Z8LvmO9F8FKTuMZiiS/ic7
         Q8mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=hLp86n7vDJdNWXWgs/H8tD34X3NU8VOCpgTIBIAKMsE=;
        fh=qTCWAVN4djsQT3QDsoTsmra1lf4NCgsTzwTL4+bFmFM=;
        b=jOi42pnqalDV2Eoseh6e9exOMr0NoO0P/4R34LNENGNpNl+DiZdoQexANtfpYSC7rv
         O+x1vyKVRJQ2e7jwRRIgD5m40yFp4ZktYqNDPmwHTdoBxgCqbbVG0HwjYFw/wDRduN1Q
         PWW8EHDfMGzFj0aNuIdP+5sKu5YMjYaHKBnyRvsALNQbAy5J3x5vydpg56zQA4QPjC5u
         PUIn8FDn4BaTmrvAP37zwdp1xhkBirJjhC3jiJhsFDRaL0gtqszYzYOewGRUYfutGKTM
         fm2A9FK0JQCPCKVGIOqer3Zh5Buo3zxbhDKyHu5H1f47QC6YSERkZN5Fd6c/gd01C0CY
         W+tg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=dW57ERSJ;
       spf=pass (google.com: domain of lduncan@suse.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=lduncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com;
       dara=pass header.i=@googlegroups.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1733331040; x=1733935840; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hLp86n7vDJdNWXWgs/H8tD34X3NU8VOCpgTIBIAKMsE=;
        b=IxA7ZSfg/FSqKh3YAmZMSHVcnwDYHX5diw6vKCjsHvrjTq/hlqVMgQpGm4k7AHz+Fc
         O9nQ0GWXwVAzOK9YATTKW9XsBLkbZwSQ7oO/3EHnkRJ9JOJZHKtSCs3WzuVrNGs5VFkh
         Cpqln+kR32GoNBocqsge/yv2OKsL2H3XolHO3zEVO72NmeMGuRnYcrF0q6UQxXBQmywR
         2Elav1RLkpDfNwd5lMWKA+NUXGF0nM+bY6Hfr5rzFco/6InPG9UJrNYWpKoaXHV8um4/
         GS8fmPF4veV+dN/1bjCfJhwmU9A5DUJXau66B/EeuWokM/csvEb0tWYGySWojPgYnKzi
         ngug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733331040; x=1733935840;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hLp86n7vDJdNWXWgs/H8tD34X3NU8VOCpgTIBIAKMsE=;
        b=Q89wMxfXzl2nxx+VJ6DrZh8pK5rVtx0RPv5yx4mXBYcXWub3PwGAZuei2Dur8XuU0q
         k/ZLLuX1dOFVG8ubLGKcU5PRbUsdT8wj8nvVqwziS4NLBbP4rt18MTO72xj34WcOQN7i
         YP2qDlN06+qGviep/z23KLHIahhix1gKI49IgmeO1TAT5VuX4Ts/eV9v6ERu7rF4LzoM
         kgeMCsdsphdsXNev96qekNjma2dKqZJOdCl9rbHGMsI+bVsxKqndD2RWjg2TgXVbeOwR
         uuFBhBe612OyrBNuTILCWY9u6SkR3LGYbCNyErYFJmVkECFxQdxDyPdYgc5/f3gluHJR
         DGAg==
X-Forwarded-Encrypted: i=2; AJvYcCUsjotKOzBMD5eldwYpGwceswJoDe3WuiL9rb7H8MTSuCooiGEuBPO1Y6/QHm2ieXFL1Vd49Q==@lfdr.de
X-Gm-Message-State: AOJu0YyqRJPEIGVGdsyUD0XDgCtvDi6DPHnNNiZIYpBPAeyVPUpbj3SA
	ONrJ8QMSg8iUT9/fASFiNwqvuGWi6TfZ+vRqmTWiZ0K+e0IW9yWJ
X-Google-Smtp-Source: AGHT+IHtFMpSSP3LqbYtLWAScZpTgzP9aKyyCGeGXeVYYNUW7Pykdo32smaC68l+2urN9386TOx+dw==
X-Received: by 2002:a05:600c:a07:b0:42f:7e87:3438 with SMTP id 5b1f17b1804b1-434d08ee8c1mr69693305e9.0.1733331038828;
        Wed, 04 Dec 2024 08:50:38 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:600c:4f12:b0:434:a7f8:bf1f with SMTP id
 5b1f17b1804b1-434afce5cbels10856735e9.1.-pod-prod-08-eu; Wed, 04 Dec 2024
 08:50:34 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXNUscVQCRgzzaSNEuhNAw3zcxI4Pp6+lg3ePnhOfqwS582t6RNpuS6g3siDS6j2A/qXYZJ5qteWINr@googlegroups.com
X-Received: by 2002:a05:600c:1d1c:b0:426:8884:2c58 with SMTP id 5b1f17b1804b1-434d58438e6mr26742695e9.4.1733331033821;
        Wed, 04 Dec 2024 08:50:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733331033; cv=none;
        d=google.com; s=arc-20240605;
        b=VC2wlaVH1JjB090Yumj+g8rI3Arw4qURfx98NQk4BflK9VCg2k/phAuWp1ApjlTO7h
         f46pKsh7pYaeumOL7cGnSkoGGXq7HES+TLI48kSEfdHfF4cH/F6GhWf58jnJhAaCCjJz
         aiUUVYfuFm2HcouNfqGgDluFfBksAwzH9Qj9atDiJVhQQclk/9epJTb3b7kJfl+aFOOR
         bo/7RL19piweCVA3Mn3yFXGqcAKBGKEDmhkglntNrODF9Q2JOMpDe0qok2RHWFNbOnWx
         NsuBQxj49VVyYvXGxHUR+8FdSb5YtBQjVn/ggxpZb5KTnxb1JU3aUNE94gD+1+Kc0FbB
         ANeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Pdsq6JfjPcCpm2zveC7HsrJs7Jt7/a28/pHa3OaP64o=;
        fh=8s9KG8haZBrzAw8dZorJViVd4JyEM5I3T7ZTXKCL0uY=;
        b=B0WCgI9f549hmw2JtYUjz00TC/R358xpdoiZkynM5FmqNPrjWwzLGI9ek53eEZrYnm
         GlF1Xhlv+QKrMHFrGsB/iJ+1eYsILDw3tTlaG2kjxUhTwfDVwBJVEnka8xPqHxkmL84F
         X8Ivg0rdeCMuMLhNLDl/pVRuo/QEHNKzgItumXn0Vszhtwy0xYEtlLA2h523J9ILRETn
         16jGacna5tHFgzKBjbl6FUC6+vtVwYCF4T9EKbdNhQhQeqD/V4TR+cxuO3P+qmS3Pt7y
         3AKWIqR3ASq7i6e6W9gt5nilmEBCLIeyb4Plvh4c7xud4b79pB/Tb+CpN/8VCuWdioEV
         FsUg==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=dW57ERSJ;
       spf=pass (google.com: domain of lduncan@suse.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=lduncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com;
       dara=pass header.i=@googlegroups.com
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com. [2a00:1450:4864:20::531])
        by gmr-mx.google.com with ESMTPS id 5b1f17b1804b1-434d43a15b8si1186125e9.1.2024.12.04.08.50.33
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Dec 2024 08:50:33 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 2a00:1450:4864:20::531 as permitted sender) client-ip=2a00:1450:4864:20::531;
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5d0cd67766aso6005509a12.2
        for <open-iscsi@googlegroups.com>; Wed, 04 Dec 2024 08:50:33 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVVUnnI6fOLOsb0KrKM67YCvzh8CaB3QLvwTdMQB9XHUejw+EOucKZADpACLpBogFCg9UltRp1Sx/JE@googlegroups.com
X-Gm-Gg: ASbGncvoWcbfrh2gQQHFOGpOPbYVfQhGyeE+EtJYmJTw6CVCfFvANqnbaxo31SjFoHo
	sM57seuvSXsgiqdgdFJTAc0EBO/pn96K+
X-Received: by 2002:a17:906:3099:b0:a99:ecaf:4543 with SMTP id
 a640c23a62f3a-aa5f7d8d1abmr556552566b.25.1733331033338; Wed, 04 Dec 2024
 08:50:33 -0800 (PST)
MIME-Version: 1.0
References: <20241117194604.13827-1-leeman.duncan@gmail.com>
In-Reply-To: <20241117194604.13827-1-leeman.duncan@gmail.com>
From: "'Lee Duncan' via open-iscsi" <open-iscsi@googlegroups.com>
Date: Wed, 4 Dec 2024 08:50:22 -0800
Message-ID: <CAPj3X_XGSQswf=iw_7ekfDaed6JGZMs_+=Rb9fgTKZ9Cj0TYAQ@mail.gmail.com>
Subject: Re: [PATCH] scsi: iscsi: fix sysfs visibility checks for CHAP
To: "Martin K. Petersen" <martin.petersen@oracle.com>, Hannes Reinecke <hare@suse.com>
Cc: linux-scsi@vger.kernel.org, linux-kernel@vger.org, 
	open-iscsi@googlegroups.com, lduncan@suse.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=google header.b=dW57ERSJ;       spf=pass
 (google.com: domain of lduncan@suse.com designates 2a00:1450:4864:20::531 as
 permitted sender) smtp.mailfrom=lduncan@suse.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com;       dara=pass header.i=@googlegroups.com
X-Original-From: Lee Duncan <lduncan@suse.com>
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

I see there's a spelling error in the description, so I'll resubmit.

On Sun, Nov 17, 2024 at 11:46=E2=80=AFAM Lee Duncan <leeman.duncan@gmail.co=
m> wrote:
>
> From: Lee Duncan <lduncan@suse.com>
>
> The username and password checks were backwards for the sysfs
> visibility checks, so correct them. This likely went unnoticed,
> since the visibility/writability for these attributes
> (username/password and mututual username/password) are all
> the same.
>
> Fixes: 1d063c17298d ('[SCSI] iscsi class: sysfs group is_visible callout =
for session attrs')
> Signed-off-by: Lee Duncan <lduncan@suse.com>
> ---
>  drivers/scsi/scsi_transport_iscsi.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_tran=
sport_iscsi.c
> index fde7de3b1e55..81c57e0e8d90 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -4587,13 +4587,13 @@ static umode_t iscsi_session_attr_is_visible(stru=
ct kobject *kobj,
>         else if (attr =3D=3D &dev_attr_sess_chap_out_idx.attr)
>                 param =3D ISCSI_PARAM_CHAP_OUT_IDX;
>         else if (attr =3D=3D &dev_attr_sess_password.attr)
> -               param =3D ISCSI_PARAM_USERNAME;
> +               param =3D ISCSI_PARAM_PASSWORD;
>         else if (attr =3D=3D &dev_attr_sess_password_in.attr)
> -               param =3D ISCSI_PARAM_USERNAME_IN;
> +               param =3D ISCSI_PARAM_PASSWORD_IN;
>         else if (attr =3D=3D &dev_attr_sess_username.attr)
> -               param =3D ISCSI_PARAM_PASSWORD;
> +               param =3D ISCSI_PARAM_USERNAME;
>         else if (attr =3D=3D &dev_attr_sess_username_in.attr)
> -               param =3D ISCSI_PARAM_PASSWORD_IN;
> +               param =3D ISCSI_PARAM_USERNAME_IN;
>         else if (attr =3D=3D &dev_attr_sess_fast_abort.attr)
>                 param =3D ISCSI_PARAM_FAST_ABORT;
>         else if (attr =3D=3D &dev_attr_sess_abort_tmo.attr)
> --
> 2.43.0
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/=
CAPj3X_XGSQswf%3Diw_7ekfDaed6JGZMs_%2B%3DRb9fgTKZ9Cj0TYAQ%40mail.gmail.com.
